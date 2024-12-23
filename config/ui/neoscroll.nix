{ lib, config, ... }:
{
  options = {
    neoscroll.enable = lib.mkEnableOption "Enable neoscroll module";
  };
  config = lib.mkIf config.neoscroll.enable {
    plugins.neoscroll = {
      enable = true;
      settings = {
        cursor_scrolls_alone = true;
        easing_function = "quadratic";
        hide_cursor = true;
        stop_eof = true;
        respect_scrolloff = false;
        mappings = [
          "<C-u>"
          "<C-d>"
          "<C-b>"
          "<C-f>"
          "<C-y>"
          "<C-e>"
          "zt"
          "zz"
          "zb"
        ];
      };
    };
  };
}
