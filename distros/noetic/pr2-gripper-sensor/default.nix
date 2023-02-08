
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-gripper-sensor-action, pr2-gripper-sensor-controller, pr2-gripper-sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-gripper-sensor";
  version = "1.0.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_gripper_sensor-release";
        rev = "release/noetic/pr2_gripper_sensor/1.0.12-1";
        sha256 = "sha256-18v7kFfXeXjXyznvDN5jyn615dCNnOY89yxdU4/4IWU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-gripper-sensor-action pr2-gripper-sensor-controller pr2-gripper-sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_sensor package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
