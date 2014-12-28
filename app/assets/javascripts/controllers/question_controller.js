Inquira.QuestionController = Ember.ObjectController.extend({

	isShowingQuestion: false,
	answerFields: {},
	numAnswers: function(){
		return this.get('answers').length;
	}.property('answers'),

	actions: {
		createAnswer: function(){
			var that = this;
			var answerFields = that.get('answerFields');
			// answerFields.question_id = that.get('id');
			answerFields.question_id = 1;
			console.log(that.get('answerFields'));
			// debugger
			var answer = that.get('answers').pushObject(that.store.createRecord('answer',answerFields));
			debugger

			// var answer = that.store.createRecord('answer', answerFields);
			answer.save().then(function(){
				that.set('answerFields',{});
				// that.transitionToRoute('question',that.get('id'));
			})
		},


		saveChanges: function(){
			console.log('save Changes fired.');
			var that=this;
			if (that.get('model.isDirty')){
				this.get('model').save();
			}
		},

		delete: function(){
			console.log('delete record Fired.');
			var that= this;
			that.get('model').destroyRecord().then(function(){
				that.transitionToRoute('questions');
			})
		},

	} // end actions.

})