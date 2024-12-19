{ lib, config, ... }:
{
  options = {
    neoscroll.enable = lib.mkEnableOption "Enable rose-pine module";
  };
  config = lib.mkIf config.neoscroll.enable {
    plugins.neoscroll.enable = true;
  };
}
