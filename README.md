<h1>Welcome to Inquira.</h1>

<p>This project is but a light clone of <a href='http://www.quora.com/' target="_blank">Quora</a>. This was done mostly for practic with <a href="http://emblemjs.com/" target="_blank"> Emblem.js</a>, a handlebars alternative syntax that I like immensely, although I have to admit that I am wary of syntaxes that compile to another syntax. </p>

<p>Inquira was built using:</p>
<ul>
	<li>Ruby on Rails</li>
	<li>Ember.js</li>
	<li>Twitter Bootstrap</li>
	<li>PostgreSQL</li>
	<li>Underscore.js</li>
	<li>Ember-rails</li>
</ul>

<p>Currently included features:</p>
<ul>
	<li>Ask/add questions</li>
	<li>Answer questions</li>
	<li>Upvote/downvote</li>
</ul>

<a href="http://inquira.herokuapp.com/" target="_blank">Give it a whirl!</a>

Currently disabled features:
	<ul>
		<li>Entire user system
			<ul>
				<li>
					<p>Adding users via Devise into Ember, while using Ember-rails instead of Ember-Cli turned out to be more of an issue than expected. While adding users, some things in the application broke. </p>
					<p>Certain features that rely on users followed suit. For example, the upvote/downvote functionality pertaining to users has been disabled. The upvote/downvote uniqueness validation - of only having one upvote for each user per question/answer, is still there, but the code connecting it to the user has been disabled. </p>
				</li>
			</ul>
		</li>
		<li>Topics
			<ul>
				<li>Unfortunately, the commits that added users included that for topics. This will be re-added soon before attempting another user-system merge.
				</li>
			</ul>
		</li>
</ul>

<p>To add/fix:</p>
<ul>
	<li>Edit/Update</li>
	<li>Fix N+1 query issue. (rolled back with users.)</li>
</ul>


