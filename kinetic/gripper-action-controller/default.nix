
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, cmake-modules, control-msgs, trajectory-msgs, realtime-tools, control-toolbox, catkin, controller-interface, urdf, actionlib, angles, roscpp, xacro }:
buildRosPackage {
  pname = "ros-kinetic-gripper-action-controller";
  version = "0.13.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/gripper_action_controller/0.13.5-0.tar.gz;
    sha256 = "8acc4c5f399d60512547b3fdf18321609c3c7ed5b57b1275185d30ed01da68a0";
  };

  buildInputs = [ controller-manager hardware-interface cmake-modules control-msgs trajectory-msgs realtime-tools control-toolbox controller-interface urdf actionlib angles roscpp xacro ];
  propagatedBuildInputs = [ controller-manager hardware-interface cmake-modules control-msgs trajectory-msgs realtime-tools control-toolbox controller-interface urdf actionlib angles roscpp xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gripper_action_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
