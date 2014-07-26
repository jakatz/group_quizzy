var ResultView = Backbone.View.extend({

  template: JST['templates/results'],

  initialize: function(){
    this.model.save();
  },

  render: function() {
    var newHtml = this.template(this.model.toJSON());
    this.$el.html(newHtml);
    return this;
  }
});
