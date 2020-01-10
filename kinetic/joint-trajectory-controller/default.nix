
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, cmake-modules, control-msgs, control-toolbox, controller-interface, controller-manager, hardware-interface, realtime-tools, roscpp, rostest, trajectory-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-joint-trajectory-controller";
  version = "0.13.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/joint_trajectory_controller/0.13.5-0.tar.gz";
    name = "0.13.5-0.tar.gz";
    sha256 = "8e5e0ddc6068ab10e9d248f3fcd7c47ad5b2bcb37d1cfa50b212f8755fe34260";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ controller-manager rostest xacro ];
  propagatedBuildInputs = [ actionlib angles control-msgs control-toolbox controller-interface hardware-interface realtime-tools roscpp trajectory-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
