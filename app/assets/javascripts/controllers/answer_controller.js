Inquira.AnswerController = Ember.ObjectController.extend({
	answerFields: {},
	upvoted: null,
	downvoted: null,

	upvoteObserver: function(){
		var that = this;
		var upvotes = that.get('answer_upvotes');

		// Need to replace with current_userID
		var current_userID = 1;

		if (upvotes.findBy('user_id', current_userID)){
			that.set('upvoted', true);
		}
	}.observes('answer_upvotes'),

	numAnswers: function(){
		return this.get('answers').length;
	}.property('answers'),

	downvoteObserver: function(){
		var that = this;
		var downvotes = that.get('answer_downvotes');

		// Need to replace with current_userID
		var current_userID = 1;

		if (downvotes.findBy('user_id', current_userID)){
			that.set('downvoted', true);
		}
	}.observes('answer_downvotes'),

	numAnswers: function(){
		return this.get('answers').length;
	}.property('answers'),	

	actions: {
		createAnswer: function(){
			var that = this;
			var answerFields = that.get('answerFields');
			// answerFields.answer_id = that.get('id');
			answerFields.answer_id = 1;
			var answer = that.get('answers').pushObject(that.store.createRecord('answer',answerFields));
			answer.save().then(function(){
				that.set('answerFields',{});
			})
		},

		createUpvote: function(){
			var that= this;

			if (that.upvoted){
				return;
			}

			answer_id = that.get('id');
			var upvote = that.get('answer_upvotes').pushObject(that.store.createRecord('answerUpvote',{
					answer_id: answer_id
			}));

			// debugger
			upvote.save().then(function(){
				console.log('upvoted??');
			})
		},

		createDownvote: function(){
			console.log("create downvote fired. ");
			var that= this;

			if (that.downvoted){
				return;
			}

			console.log("create downvote fired. ");
			answer_id = that.get('id');
			var downvote = that.get('answer_downvotes').pushObject(that.store.createRecord('answerDownvote',{
					answer_id: answer_id
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
				that.transitionToRoute('answers');
			})
		},

	} // end actions.

})