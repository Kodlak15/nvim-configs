{
  keymaps = [
    {
      # Better escape insert mode
      mode = "i";
      key = "jk";
      action = "<esc>";
      options = {
        silent = true;
        remap = false;
      };
    }
    {
      # Better escape insert mode
      mode = "i";
      key = "kj";
      action = "<esc>";
      options = {
        silent = true;
        remap = false;
      };
    }
    {
      # Toggle neo-tree
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
      options = {
        silent = true;
        remap = false;
      };
    }
    {
      # Previous buffer
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<CR>";
      options = {
        silent = true;
        remap = false;
      };
    }
    {
      # Next buffer
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<CR>";
      options = {
        silent = true;
        remap = false;
      };
    }
    {
      # Pin buffer
      mode = "n";
      key = "<leader>bp";
      action = "<cmd>BufferLineTogglePin<CR>";
      options = {
        silent = true;
        remap = false;
      };
    }
    {
      # Delete unpinned buffers
      mode = "n";
      key = "<leader>bP";
      action = "<cmd>BufferLineGroupClose ungrouped<CR>";
      options = {
        silent = true;
        remap = false;
      };
    }
    {
      # Delete current buffer
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bd<CR>";
      options = {
        silent = true;
        remap = false;
      };
    }
    {
      # Toggle dashboard
      mode = "n";
      key = "<leader>;";
      action = "<cmd>Alpha<CR>";
      options = {
        silent = true;
        remap = false;
      };
    }
    {
      # Source init.lua
      mode = ["n"];
      key = "<Leader>s";
      action = "<cmd>silent! source /home/cody/.config/nvim/init.lua<CR>";
    }
    {
      # Toggle Supermaven
      mode = "n";
      key = "<leader>sm";
      action = "<cmd>SupermavenToggle<CR>";
      options = {
        silent = true;
        remap = false;
      };
    }
    {
      # Toggle debugger breakpoint
      mode = "n";
      key = "<leader>dt";
      action = "<cmd>DapToggleBreakpoint<CR>";
      options = {
        desc = "Dap toggle breakpoint";
        nowait = true;
        remap = false;
      };
    }
    {
      # Continue to next breakpoint
      mode = "n";
      key = "<leader>dc";
      action = "<cmd>DapContinue<CR>";
      options = {
        desc = "Dap continue";
        nowait = true;
        remap = false;
      };
    }
    {
      # Debugger step into
      mode = "n";
      key = "<leader>di";
      action = "<cmd>DapStepInto<CR>";
      options = {
        desc = "Dap step into";
        nowait = true;
        remap = false;
      };
    }
    {
      # Debugger step over
      mode = "n";
      key = "<leader>do";
      action = "<cmd>DapStepOver<CR>";
      options = {
        desc = "Dap step over";
        nowait = true;
        remap = false;
      };
    }
    {
      # Terminate debugger
      mode = "n";
      key = "<leader>dq";
      action.__raw = ''
        function()
          require("dap").terminate()
          require("dapui").close()
          require("nvim-dap-virtual-text").toggle()
        end
      '';
      options = {
        desc = "Terminate debugger";
        nowait = true;
        remap = false;
      };
    }
  ];
}
