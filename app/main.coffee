routes = require './routes'
app = module.exports = require './config'

# Routes

app.get '/', routes.index
app.get '/login', routes.login,
app.get '/signup', routes.signup
app.get '/profile', isLoggedIn, routes.profile
app.get '/logout', routes.logout

isLoggedIn = (req, res, next) ->
  return next() if req.isAuthenticated()
  res.redirect '/'