{
  programs.nixvim.plugins = {

    # Dashboard
    alpha = {
      enable = true;
      theme = "dashboard";
    };

    # Language server
    lsp = {
      enable = true;
      servers = {
        ts_ls.enable = true; # TS/JS
        cssls.enable = true; # CSS
        tailwindcss.enable = true; # TailwindCSS
        html.enable = true; # HTML
        marksman.enable = true; # Markdown
        nil_ls.enable = true; # Nix
        yamlls.enable = true; # YAML

        lua_ls = {
          # Lua
          enable = true;
          settings.telemetry.enable = false;
        };

        # Rust
        rust_analyzer = {
          enable = true;
          installRustc = true;
          installCargo = true;
        };
      };
    };

    nix = {
      enable = true;
    };

    # Todo comments
    todo-comments = {
      enable = true;
      settings.colors = {
        error = [
          "DiagnosticError"
          "ErrorMsg"
          "#DC2626"
        ];
        warning = [
          "DiagnosticWarn"
          "WarningMsg"
          "#FBBF24"
        ];
        info = [
          "DiagnosticInfo"
          "#2563EB"
        ];
        hint = [
          "DiagnosticHint"
          "#10B981"
        ];
        default = [
          "Identifier"
          "#7C3AED"
        ];
        test = [
          "Identifier"
          "#FF00FF"
        ];
      };
    };

    # File tree
    neo-tree = {
      enable = true;
      enableDiagnostics = true;
      enableGitStatus = true;
      enableModifiedMarkers = true;
      enableRefreshOnWrite = true;
      closeIfLastWindow = true;
      popupBorderStyle = "rounded";
      buffers = {
        bindToCwd = false;
        followCurrentFile = {
          enabled = true;
        };
      };
      window = {
        width = 40;
        height = 15;
        autoExpandWidth = false;
        mappings = {
          "<space>" = "none";
        };
      };
    };

    # Prettier fancier command window
    noice = {
      enable = true;
    };

    # Good old Telescope
    telescope = {
      enable = true;
      extensions = {
        fzf-native = {
          enable = true;
        };
      };
    };

    # Notify
    notify = {
      enable = true;
      backgroundColour = "#1e1e2e";
      fps = 60;
      render = "default";
      timeout = 500;
      topDown = true;
    };

    # Buffer bar
    bufferline = {
      enable = true;
    };

    # Status bar
    lualine = {
      enable = true;
    };

    # Icons
    web-devicons.enable = true;

    # Smooth scrolling
    neoscroll = {
      enable = true;
    };

    # Autopairs
    nvim-autopairs = {
      enable = true;
    };
  };
}
