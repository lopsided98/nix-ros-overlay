
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, libtool, message-generation, message-runtime, pluginlib, pr2-controller-interface, realtime-tools, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ethercat-trigger-controllers";
  version = "1.10.18-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_controllers-release";
        rev = "release/noetic/ethercat_trigger_controllers/1.10.18-1";
        sha256 = "sha256-YJMLlFQI+Ao5BlXb0czCy7Wb0S1tRsRbisEImyrvIHg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs libtool message-runtime pluginlib pr2-controller-interface realtime-tools roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers to operate the digital output of the motor controller
    boards and the projector board. This package has not been reviewed and
    should be considered unstable.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
