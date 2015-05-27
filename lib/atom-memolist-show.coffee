{SelectListView} = require 'atom-space-pen-views'
AtomMemolistFiles = require './atom-memolist-files'

module.exports =
class AtomMemolistShow extends SelectListView
  initialize: ->
    super
    @settings = atom.config.get('atom-memolist')
    lists = AtomMemolistFiles(@settings.memo_dir_path)
    @addClass('overlay from-top')
    @setItems(lists)
    atom.workspaceView.append(this)
    @focusFilterEditor()

  viewForItem: (item) ->
    "<li>#{item}</li>"

  confirmed: (item) ->
    console.log("#{@settings.memo_dir_path + '/' + item} is found")
    atom.workspace.open @settings.memo_dir_path + '/' + item
