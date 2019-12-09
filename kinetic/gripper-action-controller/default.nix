
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, xacro, controller-interface, controller-manager, urdf, control-toolbox, hardware-interface, actionlib, cmake-modules, catkin, realtime-tools, roscpp, angles, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-gripper-action-controller";
  version = "0.13.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/gripper_action_controller/0.13.5-0.tar.gz";
    name = "0.13.5-0.tar.gz";
    sha256 = "8acc4c5f399d60512547b3fdf18321609c3c7ed5b57b1275185d30ed01da68a0";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs xacro controller-interface controller-manager urdf hardware-interface control-toolbox actionlib cmake-modules realtime-tools roscpp angles control-msgs ];
  propagatedBuildInputs = [ trajectory-msgs xacro controller-interface controller-manager urdf hardware-interface control-toolbox cmake-modules actionlib realtime-tools roscpp angles control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gripper_action_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
