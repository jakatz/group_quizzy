var QuizView = Backbone.View.extend({
  el:"#quizzy",

  initialize: function(options){
    // console.log(options);
    this.score = 0;
    this.listenTo(this.collection,'sync', this.render);
    this.collection.fetch({reset: true});
  },

  render: function(){
    // this.$el.append("<h1>" +  + "</h1>")
    this.$el.append("<input type='text' id='name'>Ey yo, what's yo name?\n")
    this.collection.each(this.addQuestion, this);
    this.$el.append("<button type = 'submit' class = 'quiz-submit'>submit</button>");
  },

  addQuestion: function(question){
    var questionView = new QuestionView({
      model: question
    });
    this.$el.append(questionView.render().el)
  },

  events: {
    "click .quiz-submit": "checkAnswers"
  },

  checkAnswers:  function(){
    var collectionList = this.collection.models
    for(var i = 0; i < collectionList.length; i++){
      if(collectionList[i].attributes.answer === collectionList[i].attributes.selectedAnswer){
        this.score += 1;
      }
    }

    var resultView = new ResultView({
      collection: new Results(),
      el: this.el
    });

    resultView.collection.create({
      userScore: this.score,
      total: collectionList.length,
      name: this.$el.find("#name").val()
    }, {success: function() {resultView.collection.fetch()}});


    // resultView.collection.

    // this.$el.empty();
    // this.$el.append(resultView.render().el);
  }
});
