// for more details see: http://emberjs.com/guides/models/defining-models/

Inquira.QuestionUpvote = DS.Model.extend({
	question_id: DS.attr('number'),
	user_id : DS.attr('number'),
});
