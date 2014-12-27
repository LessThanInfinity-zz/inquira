Inquira.QuestionsNewController = Ember.Controller.extend({
	actions: {

		createQuestion: function(){
			var that = this;
			var question = that.store.createRecord('question', this.get('fields'));
			question.save().then(function(){
				that.transitionToROute('question', question);
			});
		}

	} // end actions.
});