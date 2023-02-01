
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, message-generation, message-runtime, pluginlib, pr2-controller-interface, pr2-hardware-interface, pr2-mechanism-model, realtime-tools, robot-mechanism-controllers, roscpp, sensor-msgs, std-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-joint-qualification-controllers";
  version = "1.0.15-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_self_test-release";
        rev = "release/noetic/joint_qualification_controllers/1.0.15-1";
        sha256 = "sha256-uvnfL4x18yI+1gH0HhMnbgPmwqrkBPF9Pl+eB8WCKOE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ control-toolbox message-runtime pluginlib pr2-controller-interface pr2-hardware-interface pr2-mechanism-model realtime-tools robot-mechanism-controllers roscpp sensor-msgs std-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers used in PR2 hardware testing. For testing counterbalance of PR2, and for internal WG use.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
