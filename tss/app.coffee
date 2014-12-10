express = require 'express'
jade = require 'jade'

# APP
app = module.exports = express()

# CONFIGURATION
app.set 'views', "#{__dirname}/views"
app.set 'view engine', 'jade'
app.use express.static "#{__dirname}/public"

# ROUTES
router = require './routes/router'
app.use '/', router

# SERVER
app.listen PORT=3000
