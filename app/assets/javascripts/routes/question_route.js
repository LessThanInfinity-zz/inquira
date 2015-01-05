Inquira.QuestionRoute = Ember.Route.extend({
	model: function(params){
		return this.store.find('question', params.id);
	},

	setupController: function(controller, model){
		var that= this;
		controller.set('model', model);
	},

	activate: function(){
		var that= this;
		that.controllerFor('questions').set('isShowingQuestion', true)
	},

	deactivate: function(){
		var that= this;
		that.controllerFor('questions').set('isShowingQuestion', false)
	}
})