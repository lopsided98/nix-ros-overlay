
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, gazebo-ros, gazebo-ros-control, joint-state-controller, position-controllers, robot-state-publisher, rqt-robot-steering, rviz, urdf-tutorial, xacro }:
buildRosPackage {
  pname = "ros-noetic-urdf-sim-tutorial";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf_sim_tutorial-release/archive/release/noetic/urdf_sim_tutorial/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "b7315898efb1689c164dc6738d611baa0826e27f9df47828a591a3055ede1ce0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager diff-drive-controller gazebo-ros gazebo-ros-control joint-state-controller position-controllers robot-state-publisher rqt-robot-steering rviz urdf-tutorial xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The urdf_sim_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
