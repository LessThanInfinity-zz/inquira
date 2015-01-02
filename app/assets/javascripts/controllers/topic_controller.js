Inquira.TopicController = Ember.ObjectController.extend({

	actions: {
		delete : function(){
			console.log('Deleting Topic.');
			var that = this;
			that.get('model').destroyRecord();
		}
	}

})