express = require 'express'
router = module.exports = express.Router()

router.get '/', (req, res) ->
  res.render 'index', locals: title: 'Hello World!'

router.get '/layout', (req, res) ->
  res.render 'layout', locals: title: 'Hello World!'

router.get '/smith', (req, res) ->
  res.render 'smith_index'
