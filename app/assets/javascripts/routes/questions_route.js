Inquira.QuestionsRoute = Ember.Route.extend({
	model: function(){
		// debugger
		return this.store.find('question');
	},

	setupController: function(controller, model){
		var that= this;

		// var questions = that.store.find('question');
		// questions.then(function(rec){
		// 	controller.set('model', rec);
		// })

		controller.set('model', model);

		var topics = that.store.find('topic');
		topics.then(function(rec){
			controller.set('allTopics', rec);
			console.log('fetched topics.');
		});
	},

})