var Question = Backbone.Model.extend({
  defaults: {
    selectedAnswer: null
  }
});

var Result = Backbone.Model.extend({
  urlRoot: '/score'
});

var Results = Backbone.Collection.extend({
  url: '/score',
  model: Result
});

var Quiz = Backbone.Model.extend({
  urlRoot: '/quiz'
});
