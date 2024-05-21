{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        lua-ls.enable = true;
        html = {
          enable = true;
          filetypes = [
            "html"
          ];
        };
        htmx = {
          enable = true;
          filetypes = [
            "html"
            "templ"
            # "rust"
          ];
        };
        emmet_ls = {
          enable = true;
          filetypes = [
            "html"
            "templ"
            # "rust"
          ];
        };
        cssls.enable = true;
        ccls.enable = true;
        clangd.enable = true;
        cmake.enable = true;
        gopls = {
          enable = true;
          filetypes = [
            "go"
            "templ"
          ];
        };
        eslint.enable = true;
        nil_ls.enable = true;
        pyright.enable = true;
        hls.enable = true;
        # intelephense.enable = true;
        jsonls.enable = true;
        ocamllsp.enable = true;
        rust-analyzer = {
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
        tsserver.enable = true;
        yamlls.enable = true;
        templ.enable = true;
        pylsp.enable = true;
        tailwindcss = {
          enable = true;
          filetypes = [
            "html"
            "css"
            "scss"
            "javascript"
            "typescript"
            "svelte"
            "rust"
            "templ"
            "go"
          ];
          extraOptions = {
            init_options.userLanguages.rust = "html";
          };
        };
        zls.enable = true;
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
      formatOnSave = {
        timeoutMs = 500;
        lspFallback = true;
      };
      formatters = {}; # Custom formatters
      formattersByFt = {
        lua = ["stylua"];
        nix = ["alejandra"];
        bash = ["shfmt"];
        javascript = ["prettier"];
        typescript = ["prettier"];
        html = ["prettier"];
        json = ["prettier"];
        templ = ["prettier"];
        c = ["clang_format"];
        python = ["isort" "black"];
        haskell = ["fourmolu"];
        rust = ["rustfmt"];
      };
      notifyOnError = false;
    };
  };
}
