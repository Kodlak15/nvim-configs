{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        lua_ls.enable = true;
        html = {
          enable = true;
          filetypes = [
            "html"
            "templ"
          ];
        };
        htmx = {
          enable = true;
          filetypes = [
            "html"
            "heex"
            "templ"
          ];
        };
        emmet_ls = {
          enable = true;
          filetypes = [
            "html"
            "heex"
            "templ"
          ];
        };
        cssls.enable = true;
        ccls.enable = false; # NOTE: was causing error, so disabled unless need arises later
        clangd.enable = true;
        cmake.enable = true;
        elixirls = {
          enable = true;
        };
        gopls = {
          enable = true;
          filetypes = [
            "go"
            "templ"
          ];
        };
        gdscript = {
          enable = true;
          package = null; # NOTE: lsp server runs on 127.0.0.1:6005 when godot editor open
        };
        glslls = {
          enable = false; # NOTE: was causing error, so temporarily disabling until need arises
          # filetypes = [
          #   "glsl"
          #   "vertex"
          #   "frag"
          # ];
        };
        bashls.enable = true;
        eslint.enable = true;
        nil_ls.enable = true;
        pyright.enable = true;
        hls = {
          enable = true;
          installGhc = false;
        };
        jsonls.enable = true;
        ocamllsp.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
          settings = {
            check = {
              features = ["all"];
            };
          };
        };
        svelte.enable = true;
        ts_ls.enable = true;
        yamlls.enable = true;
        templ.enable = true;
        pylsp.enable = true;
        texlab.enable = true;
        tailwindcss = {
          enable = true;
          filetypes = [
            "html"
            "html.heex"
            "heex"
            "templ"
            "css"
            "scss"
            "svelte"
          ];
          extraOptions = {
            init_options.userLanguages.rust = "html";
          };
        };
        ols.enable = true;
        zls.enable = true;
        gleam.enable = true;
      };
      keymaps = {
        diagnostic = {
          "gl" = "goto_next";
          "gh" = "goto_prev";
        };
        lspBuf = {
          K = "hover";
          gD = "references";
          gd = "definition";
          gi = "implementation";
          gt = "type_definition";
        };
      };
    };
    conform-nvim = {
      enable = true;
      settings = {
        format_on_save = {
          timeout_ms = 500;
          lsp_format = "fallback";
        };
        notify_on_error = false;
        formatters_by_ft = {
          lua = ["stylua"];
          nix = ["alejandra"];
          bash = ["shfmt"];
          javascript = ["prettier"];
          typescript = ["prettier"];
          javascriptreact = ["prettier"];
          typescriptreact = ["prettier"];
          html = ["prettier"];
          json = ["prettier"];
          templ = ["templ"];
          c = ["clang_format"];
          python = ["isort" "black"];
          haskell = ["fourmolu"];
          rust = ["rustfmt"];
          ocaml = ["ocamlformat"];
          gleam = ["gleam"];
        };
      };
    };
  };
}
