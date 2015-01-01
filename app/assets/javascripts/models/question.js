// for more details see: http://emberjs.com/guides/models/defining-models/

Inquira.Question = DS.Model.extend({
	title: DS.attr('string'),
	description: DS.attr('string'),
	asker_id: DS.attr('number'),
	created_at: DS.attr('date'),
	updated_at: DS.attr('date'),
	anonymous: DS.attr('boolean'),
	answers: DS.hasMany('answer'),
	question_upvotes: DS.hasMany('question_upvote'),
	question_downvotes: DS.hasMany('question_downvote'),
	topics: DS.hasMany('topic'),
	related_questions: DS.hasMany('question'),

	num_upvotes:function(){
		// debugger
		return this.get('question_upvotes').get('length');
	}.property('question_upvotes'),

	num_downvotes:function(){
		// debugger
		return this.get('question_downvotes').get('length');
	}.property('question_downvotes') ,

});
