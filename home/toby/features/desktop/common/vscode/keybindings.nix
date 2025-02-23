{
  programs.vscode.keybindings = [
    {
      key = "shift+meta+p";
      command = "workbench.action.showCommands";
    }
    {
      key = "ctrl+shift+p";
      command = "-workbench.action.showCommands";
    }
    {
      key = "shift+alt+f";
      command = "notebook.formatCell";
      when = "editorHasDocumentFormattingProvider && editorTextFocus && inCompositeEditor && notebookEditable && !editorReadonly && activeEditor == 'workbench.editor.notebook'";
    }
    {
      key = "ctrl+shift+i";
      command = "-notebook.formatCell";
      when = "editorHasDocumentFormattingProvider && editorTextFocus && inCompositeEditor && notebookEditable && !editorReadonly && activeEditor == 'workbench.editor.notebook'";
    }
    {
      key = "shift+alt+f";
      command = "editor.action.formatDocument";
      when = "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor";
    }
    {
      key = "ctrl+shift+i";
      command = "-editor.action.formatDocument";
      when = "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor";
    }
    {
      key = "shift+alt+f";
      command = "editor.action.formatDocument.none";
      when = "editorTextFocus && !editorHasDocumentFormattingProvider && !editorReadonly";
    }
    {
      key = "ctrl+shift+i";
      command = "-editor.action.formatDocument.none";
      when = "editorTextFocus && !editorHasDocumentFormattingProvider && !editorReadonly";
    }
  ];
}
