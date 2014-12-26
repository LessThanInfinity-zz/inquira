// For more information see: http://emberjs.com/guides/routing/

Inquira.Router.reopen({
	location: 'auto',
	rootURL: '/'
})

Inquira.Router.map(function() {
  this.resource('questions', {path: '/'}, function(){
  	this.resource('question', {path: '/questions/:id'});
  } );
});
