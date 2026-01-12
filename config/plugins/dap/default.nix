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
      settings = {
        defaults.fallback = {
          force_new_terminal = true;
        };
      };
      luaConfig.post = ''
        local dap = require("dap")
        local dapui = require("dapui")

        vim.fn.sign_define("DapBreakpoint", { text = "🐞" })

        dap.listeners.before.attach.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
          dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
          dapui.close()
        end
      '';
    };

    dap-ui = {
      enable = true;
    };

    dap-virtual-text = {
      enable = true;
    };
  };
}
