
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, boost, catkin, code-coverage, control-msgs, control-toolbox, controller-interface, controller-manager, hardware-interface, pluginlib, realtime-tools, roscpp, rostest, std-msgs, trajectory-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-joint-trajectory-controller";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/joint_trajectory_controller/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "3d57f554bf2b22d0c5154820dd3ec70c062817cec6ddeb10dbaa7f347ea20337";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib ];
  checkInputs = [ code-coverage controller-manager rostest std-msgs xacro ];
  propagatedBuildInputs = [ actionlib angles boost control-msgs control-toolbox controller-interface hardware-interface realtime-tools roscpp trajectory-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
