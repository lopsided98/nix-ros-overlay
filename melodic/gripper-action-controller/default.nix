
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, xacro, controller-interface, controller-manager, urdf, control-toolbox, hardware-interface, actionlib, cmake-modules, catkin, realtime-tools, roscpp, angles, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-gripper-action-controller";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/gripper_action_controller/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "7b15202e7175d3352a3855ee222ddbd4db8a5221425436f4637a80e600907ce2";
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
