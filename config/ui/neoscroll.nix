{ lib, config, ... }:
{
  options = {
    neoscroll.enable = lib.mkEnableOption "Enable neoscroll module";
  };
  config = lib.mkIf config.neoscroll.enable {
    plugins.neoscroll = {
      enable = true;
      settings = {
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
