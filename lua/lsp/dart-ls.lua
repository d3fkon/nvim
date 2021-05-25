require("flutter-tools").setup{
    widget_guides = {
      enabled = true
    },
    dev_log = {
      open_cmd = "10new", -- command to use to open the log buffer
    },
    outline = {
      open_cmd = "10new", -- command to use to open the outline buffer
    },
    closing_tags = {
      highlight = "ErrorMsg", -- highlight for the closing tag
      prefix = ">", -- character to use for close tag e.g. > Widget
      enabled = true -- set to false to disable
    },
    lsp = {
    on_attach = function(client)
      require('illuminate').on_attach(client)
      require('completion').on_attach(client)
    end,
    cmd={'dart', 'C:\\tools\\dart-sdk\\bin\\snapshots\\analysis_server.dart.snapshot', '--lsp'},
    init_options = {
        closingLabels=true,
        flutterOutline=true,
        onlyAnalyzeProjectsWithOpenFiles=false,
        outline=true,
        suggestFromUnimportedLibraries=true
    },
  }
}
