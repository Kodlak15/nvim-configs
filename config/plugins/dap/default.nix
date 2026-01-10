{pkgs, ...}: {
  plugins = {
    dap = {
      enable = true;
      adapters = {
        executables.lldb = {
          command = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
        };
      };
      configurations = {
        cpp = [
          {
            # TODO: configure keybinds
            type = "lldb";
            request = "launch";
            name = "lldb";
            program.__raw = ''
              function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
              end
            '';
          }
        ];
      };
    };

    dap-ui = {
      enable = true;
    };

    dap-virtual-text = {
      enable = true;
    };
  };
}
