// for more details see: http://emberjs.com/guides/models/defining-models/

Inquira.Topic = DS.Model.extend({
	title: DS.attr('string'),
	questions: DS.hasMany('question'),
	created_at: DS.attr('date'),
	updated_at: DS.attr('date'),
});
