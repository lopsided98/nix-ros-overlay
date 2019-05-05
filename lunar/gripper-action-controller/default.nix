
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, cmake-modules, control-msgs, trajectory-msgs, realtime-tools, control-toolbox, catkin, controller-interface, urdf, actionlib, angles, roscpp, xacro }:
buildRosPackage {
  pname = "ros-lunar-gripper-action-controller";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/gripper_action_controller/0.13.4-0.tar.gz;
    sha256 = "111838f81624639170767d9e0749572380688f5c8ba837844bfa98a2abb7e705";
  };

  buildInputs = [ controller-manager hardware-interface cmake-modules control-msgs trajectory-msgs realtime-tools control-toolbox controller-interface urdf actionlib angles roscpp xacro ];
  propagatedBuildInputs = [ controller-manager hardware-interface cmake-modules control-msgs trajectory-msgs realtime-tools control-toolbox controller-interface urdf actionlib angles roscpp xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gripper_action_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
