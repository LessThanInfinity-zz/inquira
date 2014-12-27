// for more details see: http://emberjs.com/guides/models/defining-models/

Inquira.Question = DS.Model.extend({
	title: DS.attr('string'),
	description: DS.attr('string'),
	asker_id: DS.attr('number'),
	created_at: DS.attr('date'),
	updated_at: DS.attr('date'),
	anonymous: DS.attr('boolean'),
	answers: DS.hasMany('answer')
});
