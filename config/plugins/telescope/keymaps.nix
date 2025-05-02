{
  plugins.telescope.keymaps = {
    "<leader><leader>" = {
      action = "find_files";
      options = {
        desc = "Telescope find files";
      };
    };
    "<leader>g" = {
      action = "git_files";
      options = {
        desc = "Telescope find git files";
      };
    };
    "<leader>fg" = {
      action = "live_grep";
      options = {
        desc = "Telescope live grep";
      };
    };
    "gd" = {
      action = "lsp_definitions";
      options = {
        desc = "[G]oto [D]efinition";
      };
    };
    "gr" = {
      action = "lsp_references";
      options = {
        desc = "[G]oto [R]eferences";
      };
    };
    "gI" = {
      action = "lsp_implementations";
      options = {
        desc = "[G]oto [I]mplementations";
      };
    };
    "<leader>D" = {
      action = "lsp_type_definitions";
      options = {
        desc = "Type [D]efinition";
      };
    };
    "<leader>ds" = {
      action = "lsp_document_symbols";
      options = {
        desc = "[D]ocument [S]ymbols";
      };
    };
    "<leader>ws" = {
      action = "lsp_dynamic_workspace_symbols";
      options = {
        desc = "[W]orkspace [S]ymbols";
      };
    };
  };
}
