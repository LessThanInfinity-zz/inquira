// for more details see: http://emberjs.com/guides/models/defining-models/

Inquira.Tagging = DS.Model.extend({
	question_id: DS.attr('number'),
	topic_id: DS.attr('number'),
	created_at: DS.attr('date'),
	updated_at: DS.attr('date'),
});
