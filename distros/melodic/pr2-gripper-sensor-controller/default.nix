
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, pluginlib, pr2-controller-interface, pr2-controller-manager, pr2-controllers-msgs, pr2-gripper-sensor-msgs, pr2-mechanism-model, realtime-tools, roscpp, roslib, rosrt, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-pr2-gripper-sensor-controller";
  version = "1.0.11-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_gripper_sensor-release";
        rev = "release/melodic/pr2_gripper_sensor_controller/1.0.11-1";
        sha256 = "sha256-1bCtmSvjVgItidpA/d4YwkW97mCCXFcU748JRUQ/D1I=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-msgs pluginlib pr2-controller-interface pr2-controller-manager pr2-controllers-msgs pr2-gripper-sensor-msgs pr2-mechanism-model realtime-tools roscpp roslib rosrt std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_sensor_controller package is a real-time controller that integrates signals from the PR2 hand-mounted accelerometer and finger-mounted pressure sensors with motor control of the gripper joint to do highly responsive sensing and low-latency closed-loop control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
