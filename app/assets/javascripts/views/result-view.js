var ResultView = Backbone.View.extend({

  initialize: function() {
    this.listenTo(this.collection, 'sync', this.render);
    this.listenTo(this.collection, 'add', this.render);
  },

  template: JST['templates/results'],

  render: function() {
    var newHtml = this.template({collection: this.collection.toJSON()});
    this.$el.empty();
    this.$el.html(newHtml);
    return this;
  }
});
