{ config, lib, pkgs, ... }:

with lib;

let
  rosCfg = config.services.ros;
  cfg = rosCfg.core;
in {
  # Interface

  options.services.ros.core = {
    enable = mkEnableOption "roscore";

    port = mkOption {
      type = types.ints.unsigned;
      default = 11311;
      description = ''
        Port the ROS master will bind to.
      '';
    };
  };

  # Implementation

  config = mkIf cfg.enable {
    systemd.services.roscore = {
      description = "ROS core";
      serviceConfig = {
        Type = "exec";
        ExecStart = let
          env = with rosCfg.pkgs; buildEnv {
            name = "roscore-env";
            paths = [ roslaunch ];
          };
        in "${env}/bin/roscore -p ${toString cfg.port}";
        User = "ros";
        Group = "ros";
        StateDirectory = "ros";
      };
      wantedBy = [ "multi-user.target" ];
      environment = {
        ROS_HOSTNAME = rosCfg.hostname;
        ROS_MASTER_URI = rosCfg.masterUri;
        ROS_HOME = "/var/lib/ros";
      };
    };
  };
}
