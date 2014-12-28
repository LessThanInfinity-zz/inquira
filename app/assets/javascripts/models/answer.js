// for more details see: http://emberjs.com/guides/models/defining-models/

Inquira.Answer = DS.Model.extend({
	body: DS.attr('string'),
	question_id: DS.attr('number'),
	user_id: DS.attr('number'),
	anonymous: DS.attr('boolean'),
	created_at: DS.attr('date'),
	updated_at: DS.attr('date'),
	question: DS.belongsTo('question'),
	answer_upvotes: DS.hasMany('answer_upvote'),
	answer_downvotes: DS.hasMany('answer_downvote'),

	num_upvotes:function(){
		// debugger
		return this.get('answer_upvotes').get('length');
	}.property('answer_upvotes'),

	num_downvotes:function(){
		// debugger
		return this.get('answer_downvotes').get('length');
	}.property('answer_downvotes') ,

	// num_upvotes: DS.attr('number'),
	// num_downvotes: DS.attr('number'),

});
