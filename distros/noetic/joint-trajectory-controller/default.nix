
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, cmake-modules, code-coverage, control-msgs, control-toolbox, controller-interface, controller-manager, hardware-interface, pluginlib, realtime-tools, roscpp, rostest, trajectory-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-joint-trajectory-controller";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/joint_trajectory_controller/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "bb635c7614c81c98de9505d1f111651c3125310ce18bd4b329760007d2641551";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ code-coverage controller-manager rostest xacro ];
  propagatedBuildInputs = [ actionlib angles control-msgs control-toolbox controller-interface hardware-interface pluginlib realtime-tools roscpp trajectory-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
