
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, cmake-modules, control-msgs, control-toolbox, controller-interface, controller-manager, hardware-interface, realtime-tools, roscpp, trajectory-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-gripper-action-controller";
  version = "0.13.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/gripper_action_controller/0.13.6-1.tar.gz";
    name = "0.13.6-1.tar.gz";
    sha256 = "613a2a585a6cf4e74c6f92fcc1c910249c5f207b3e1fcf4ea71d2e6da811e7d8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib angles cmake-modules control-msgs control-toolbox controller-interface controller-manager hardware-interface realtime-tools roscpp trajectory-msgs urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gripper_action_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
