
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, controller-manager, diagnostic-updater, diff-drive-controller, diffbot-msgs, dynamic-reconfigure, hardware-interface, roscpp, rosparam-shortcuts, rosserial, sensor-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-diffbot-base";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-mobile-robots-release";
        repo = "diffbot-release";
        rev = "release/noetic/diffbot_base/1.1.0-1";
        sha256 = "sha256-Ua3MnwRHUdFP0emVcj6bV7JhgXspnaJXcGw46ugvhBA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox controller-manager diagnostic-updater diff-drive-controller diffbot-msgs dynamic-reconfigure hardware-interface roscpp rosparam-shortcuts rosserial sensor-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_base package'';
    license = with lib.licenses; [ "BSDv3" ];
  };
}
