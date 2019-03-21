
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, cmake-modules, control-msgs, trajectory-msgs, realtime-tools, catkin, control-toolbox, controller-interface, urdf, actionlib, angles, roscpp, xacro }:
buildRosPackage {
  pname = "ros-melodic-gripper-action-controller";
  version = "0.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/gripper_action_controller/0.14.3-0.tar.gz;
    sha256 = "a086773121f09c8df7f67cda8295b147ce0a74a667aa27a15eadc6021db86ad2";
  };

  propagatedBuildInputs = [ controller-manager hardware-interface cmake-modules control-msgs realtime-tools control-toolbox trajectory-msgs controller-interface urdf actionlib angles roscpp xacro ];
  nativeBuildInputs = [ controller-manager hardware-interface cmake-modules control-msgs realtime-tools control-toolbox trajectory-msgs catkin controller-interface urdf actionlib angles roscpp xacro ];

  meta = {
    description = ''The gripper_action_controller package'';
    #license = lib.licenses.BSD;
  };
}
