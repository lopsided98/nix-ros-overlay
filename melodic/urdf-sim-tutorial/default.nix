
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-robot-steering, xacro, controller-manager, robot-state-publisher, urdf-tutorial, position-controllers, catkin, rviz, diff-drive-controller, gazebo-ros-control, gazebo-ros, joint-state-controller }:
buildRosPackage {
  pname = "ros-melodic-urdf-sim-tutorial";
  version = "0.4.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf_sim_tutorial-release/archive/release/melodic/urdf_sim_tutorial/0.4.0-0.tar.gz";
    name = "0.4.0-0.tar.gz";
    sha256 = "520f94f7fe52250069283fc7bdd40b734e9153bdcc11b76309fe9522972d8f77";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-robot-steering xacro controller-manager robot-state-publisher urdf-tutorial position-controllers rviz diff-drive-controller gazebo-ros-control gazebo-ros joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The urdf_sim_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
