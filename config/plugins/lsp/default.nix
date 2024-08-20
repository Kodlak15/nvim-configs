{pkgs, ...}: {
  plugins = {
    lsp = {
      enable = true;
      servers = {
        lua-ls.enable = true;
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
            "templ"
            # "rust"
          ];
        };
        emmet-ls = {
          enable = true;
          filetypes = [
            "html"
            "templ"
            "javascriptreact"
            "typescriptreact"
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
        bashls.enable = true;
        eslint.enable = true;
        nil-ls.enable = true;
        pyright.enable = true;
        hls.enable = true;
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
        # sqls.enable = true;
        pylsp.enable = true;
        tailwindcss = {
          enable = true;
          filetypes = [
            "html"
            "css"
            "scss"
            "javascript"
            "typescript"
            "javascriptreact"
            "typescriptreact"
            "svelte"
            "rust"
            "templ"
            "go"
          ];
          extraOptions = {
            init_options.userLanguages.rust = "html";
          };
        };
        ols.enable = true;
        zls = {
          enable = true;
          package = pkgs.zls;
          # package = pkgs-stable.zls;
        };
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
        javascriptreact = ["prettier"];
        typescriptreact = ["prettier"];
        html = ["prettier"];
        json = ["prettier"];
        templ = ["templ"];
        c = ["clang_format"];
        python = ["isort" "black"];
        haskell = ["fourmolu"];
        rust = ["rustfmt"];
      };
      notifyOnError = false;
    };
  };
}
