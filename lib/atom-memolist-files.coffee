module.exports = (dir) ->
  fs = require 'fs-plus'
  files = fs.readdirSync dir
  lists = []
  for i of files
    lists.push files[i]  if files[i] isnt '.DS_Store'
  lists
