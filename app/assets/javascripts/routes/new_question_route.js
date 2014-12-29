Inquira.QuestionsNewRoute = Ember.Route.extend({
	setupController: function(controller){
		controller.set('fields', {})
	},

	activate: function(){
		var that= this;
		that.controllerFor('questions').set('isAskingQuestion', true)
	},

	deactivate: function(){
		var that= this;
		that.controllerFor('questions').set('isAskingQuestion', false)
	}
});