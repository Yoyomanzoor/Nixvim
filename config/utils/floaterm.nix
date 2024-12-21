{ lib, config, ... }:
{
  options = {
    floaterm.enable = lib.mkEnableOption "Enable floaterm module";
  };
  config = lib.mkIf config.floaterm.enable {
    plugins.floaterm = {
      enable = true;
      width = 0.9;
      height = 0.9;
      keymaps = {
        new = "<leader>je";
        toggle = "<leader>jt";
        next = "<leader>jn";
        prev = "<leader>jp";
        kill = "<leader>jk";
      };
      # settings = {
      #   width = 0.9;
      #   height = 0.9;
      #   keymap_new = "<leader>je";
      #   keymap_toggle = "<leader>jt";
      #   keymap_next = "<leader>jn";
      #   keymap_prev = "<leader>jp";
      #   keymap_kill = "<leader>jk";
      # };
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>gg";
        action.__raw = ''
          function()
            vim.cmd('lcd %:p:h')
            vim.cmd('FloatermNew --autoclose=1 lazygit')
          end
        '';
      }
    ];
  };
}
