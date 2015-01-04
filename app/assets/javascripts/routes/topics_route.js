Inquira.TopicsRoute = Ember.Route.extend({
	model: function(){
		// debugger
		return this.store.find('topic');
	}
})