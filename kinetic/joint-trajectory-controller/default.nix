
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, xacro, controller-interface, urdf, control-toolbox, controller-manager, hardware-interface, actionlib, cmake-modules, catkin, realtime-tools, roscpp, angles, rostest, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-joint-trajectory-controller";
  version = "0.13.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/joint_trajectory_controller/0.13.5-0.tar.gz";
    name = "0.13.5-0.tar.gz";
    sha256 = "8e5e0ddc6068ab10e9d248f3fcd7c47ad5b2bcb37d1cfa50b212f8755fe34260";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs controller-interface urdf control-toolbox hardware-interface actionlib cmake-modules realtime-tools roscpp angles control-msgs ];
  checkInputs = [ xacro rostest controller-manager ];
  propagatedBuildInputs = [ trajectory-msgs controller-interface urdf control-toolbox hardware-interface actionlib realtime-tools roscpp angles control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
