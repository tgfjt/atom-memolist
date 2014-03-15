AtomMemolistShow = require './atom-memolist-show'

module.exports =
  atomMemolistShow: null

  activate: ->
    atom.workspaceView.command 'atom-memolist:toggle', => @show()

  show: ->
    @atomMemolistShow = new AtomMemolistShow
