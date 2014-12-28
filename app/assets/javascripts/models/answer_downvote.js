// for more details see: http://emberjs.com/guides/models/defining-models/

Inquira.AnswerDownvote = DS.Model.extend({
	answer_id: DS.attr('number'),
	user_id : DS.attr('number'),

});
