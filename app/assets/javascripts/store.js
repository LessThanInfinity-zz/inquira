// Override the default adapter with the `DS.ActiveModelAdapter` which
// is built to work nicely with the ActiveModel::Serializers gem.
Inquira.ApplicationStore = DS.Store.extend({});
Inquira.ApplicationAdapter = DS.ActiveModelAdapter.extend({

});


// Adds X-CSRF-Token to all REST requests.
// Allows for the use of Rails protect_from_forgery
// The CSRF Token is normally found in app/views/layouts/application.html.*
// inserted with the rails helper: "csrf_meta_tags"
DS.RESTAdapter.reopen({
	// namespace: 'api/v1',
  headers: {
    "X-CSRF-Token": $('meta[name="csrf-token"]').attr('content')
  }
});
