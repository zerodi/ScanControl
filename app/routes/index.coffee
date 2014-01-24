###
GET home page.
###

exports.index = (req, res) ->
	res.render 'index', { title: 'Express' }

exports.login = (req, res) ->
  res.render 'login', { message: req.flash('loginMessage') }

exports.signup = (req, res) ->
  res.render 'signup', { message: req.flash('signupMessage') }

exports.profile = (req, res) ->
  res.render 'profile', { user: req.user }

exports.logout = (req, res) ->
  res.logout()
  res.redirect '/'