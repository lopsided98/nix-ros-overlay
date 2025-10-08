{ config, lib, pkgs, ... }:

with lib;

let
  ros2Cfg = config.services.ros2;
in {
  # Interface

  # Implementation

  config = mkIf ros2Cfg.enable {
    environment.etc."ros/rosdep/sources.list.d/20-default.list".source = pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/ros/rosdistro/225c14be89fdf7ecf028b4cf85fa82032f7728e1/rosdep/sources.list.d/20-default.list";
      sha256 = "0kxknc42y01pci8fxzhg84ybhgqyxqimycck27vb4b282lqfkzj7";
    };

    users = {
      users.ros = {
        group = "ros";
        isSystemUser = true;
      };
      groups.ros = { };
    };
  };
}
