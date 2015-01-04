Inquira.TopicController = Ember.ObjectController.extend({

	actions: {
		delete : function(){
			var that = this;
			that.get('model').destroyRecord();
		}
	}

})