Inquira.QuestionsRoute = Ember.Route.extend({
	model: function(){
		// debugger
		return this.store.find('question');
	}
})