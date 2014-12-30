Inquira.QuestionController = Ember.ObjectController.extend({
	// isShowingQuestion: false,
	// isAskingQuestion: false,
	answerFields: {},
	upvoted: null,
	downvoted: null,

	upvoteObserver: function(){
		var that = this;
		var upvotes = that.get('question_upvotes');

		// Need to replace with current_userID
		var current_userID = 1;

		if (upvotes.findBy('user_id', current_userID)){
			that.set('upvoted', true);
		}
	}.observes('question_upvotes'),

	numAnswers: function(){
		return this.get('answers').length;
	}.property('answers'),

	downvoteObserver: function(){
		var that = this;
		var downvotes = that.get('question_downvotes');

		// Need to replace with current_userID
		var current_userID = 1;

		if (downvotes.findBy('user_id', current_userID)){
			that.set('downvoted', true);
		}
	}.observes('question_downvotes'),

	numAnswers: function(){
		return this.get('answers').length;
	}.property('answers'),	

	actions: {
		createAnswer: function(){
			var that = this;
			var answerFields = that.get('answerFields');
			// answerFields.question_id = that.get('id');
			answerFields.question_id = 1;
			var answer = that.get('answers').pushObject(that.store.createRecord('answer',answerFields));
			answer.save().then(function(){
				that.set('answerFields',{});
			})
		},

		createUpvote: function(){
			var that= this;

			if (that.upvoted){
				var upvote = that.get('question_downvotes').findBy('user_id', 1);
				upvote.deleteRecord();
				upvote.save()
				return;
			}

			question_id = that.get('id');
			var upvote = that.get('question_upvotes').pushObject(that.store.createRecord('questionUpvote',{
					question_id: question_id
			}));

			// debugger
			upvote.save().then(function(){
				console.log('upvoted??');
				that.set('upvoted', true);
			})
		},

		createDownvote: function(){
			console.log("create downvote fired. ");
			var that= this;

			if (that.downvoted){
				return;
			}

			console.log("create downvote fired. ");
			question_id = that.get('id');
			var downvote = that.get('question_downvotes').pushObject(that.store.createRecord('questionDownvote',{
					question_id: question_id
			}));

			// debugger
			downvote.save().then(function(){
				console.log('downvoted??');
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