{ lib, config, ... }:
{
  options = {
    neoscroll.enable = lib.mkEnableOption "Enable neoscroll module";
  };
  config = lib.mkIf config.neoscroll.enable {
    plugins.neoscroll.enable = true;
  };
}
