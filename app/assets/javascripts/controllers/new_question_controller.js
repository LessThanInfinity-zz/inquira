Inquira.QuestionsNewController = Ember.Controller.extend({
	actions: {

		createQuestion: function(){
			var that = this;
			console.log(that.get('fields'));
			// debugger
			var question = that.store.createRecord('question', this.get('fields'));
			question.save().then(function(){
				that.transitionToRoute('question', question);
			});
		}

	} // end actions.
});