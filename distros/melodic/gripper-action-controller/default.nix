
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, cmake-modules, control-msgs, control-toolbox, controller-interface, controller-manager, hardware-interface, pluginlib, realtime-tools, roscpp, trajectory-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-gripper-action-controller";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/gripper_action_controller/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "2337e0adb4170e7b59a23577e3ad6be54e451df5bc51d840a859e33460ea68ed";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib angles cmake-modules control-msgs control-toolbox controller-interface controller-manager hardware-interface pluginlib realtime-tools roscpp trajectory-msgs urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gripper_action_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
