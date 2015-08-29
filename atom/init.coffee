# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to make opened Markdown files always be soft wrapped:

path = require 'path'

atom.workspace.observeTextEditors (editor) ->
  editorView = atom.views.getView(editor)
  extension = path.extname(editor.getPath())

  if /^\.(md|markdown)$/i.test(extension)
    editor.setSoftWrapped(true)
    editorView.classList.add('markdown')
