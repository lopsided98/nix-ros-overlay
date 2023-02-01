
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, hardware-interface, joint-state-controller, robot-state-publisher, roscpp, rosparam-shortcuts, sensor-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-noetic-diffbot-control";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-mobile-robots-release";
        repo = "diffbot-release";
        rev = "release/noetic/diffbot_control/1.1.0-1";
        sha256 = "sha256-ocP/MlfCsMVyJXl9x9thHsgjSBoCU5ys12Bp7U/FXes=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller hardware-interface joint-state-controller robot-state-publisher roscpp rosparam-shortcuts sensor-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_control package'';
    license = with lib.licenses; [ "BSDv3" ];
  };
}
