// for more details see: http://emberjs.com/guides/models/defining-models/

Inquira.Answer = DS.Model.extend({
	body: DS.attr('string'),
	question_id: DS.attr('number'),
	user_id: DS.attr('number'),
	anonymous: DS.attr('boolean'),
	created_at: DS.attr('date'),
	updated_at: DS.attr('date'),

});
