AtomMemolistShow = require './atom-memolist-show'

module.exports =
  atomMemolistShow: null

  activate: ->
    atom.commands.add "atom-workspace",
      'atom-memolist:toggle', => @show()

  show: ->
    @atomMemolistShow = new AtomMemolistShow
