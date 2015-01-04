Inquira.QuestionController = Ember.ObjectController.extend({
	needs: ['questions'],
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
				return;
			}

			question_id = that.get('id');
			var upvote = that.get('question_upvotes').pushObject(that.store.createRecord('questionUpvote',{
					question_id: question_id
			}));

			upvote.save().then(function(){
				that.set('upvoted', true);
				var downvote = that.get('question_downvotes').findBy('user_id', 1);
				if (downvote){
					downvote.deleteRecord();
					downvote.save();
					that.set('downvoted', false);
				}
			})
		},

		createDownvote: function(){
			var that= this;

			if (that.downvoted){
				return;
			}

			question_id = that.get('id');
			var downvote = that.get('question_downvotes').pushObject(that.store.createRecord('questionDownvote',{
					question_id: question_id
			}));

			downvote.save().then(function(){
				that.set('downvoted', true);
				var upvote = that.get('question_upvotes').findBy('user_id', 1);
				if (upvote){
					upvote.deleteRecord();
					upvote.save();					
				}
			})
		},

		saveChanges: function(){
			var that=this;
			if (that.get('model.isDirty')){
				this.get('model').save();
			}
		},

		addTopic: function(){
			var that = this;
			var allTopics = that.get('controllers.questions').get('allTopics');
			var testTopic = allTopics.content[0];

			question_id = that.get('id');
			topic_id = testTopic.get('id');

			newTagging = that.store.createRecord('tagging', {
				question_id: question_id,
				topic_id: topic_id
			});

			newTagging.save();

			// that.get('topics').pushObject(testTopic);
			// that.get('model').save().then(function(){
			// 	console.log('saved');
			// });

			// debugger
		},

		delete: function(){
			var that= this;
			that.get('model').destroyRecord().then(function(){
				that.transitionToRoute('questions');
			})
		},

	} // end actions.

})