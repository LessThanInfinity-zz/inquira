Inquira.QuestionController = Ember.ObjectController.extend({

	isShowingQuestion: false,

	actions: {
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
				that.transitionToRoute('leads');
			})
		},

	} // end actions.

})