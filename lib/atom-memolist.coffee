AtomMemolistShow = require './atom-memolist-show'

module.exports =
  atomMemolistShow: null

  activate: (state) ->
    atom.workspaceView.command 'atom-memolist:toggle', => @show()

  deactivate: ->
    # do nothing

  show: ->
    @atomMemolistShow = new AtomMemolistShow
