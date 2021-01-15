
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, gazebo-ros, gazebo-ros-control, joint-state-controller, position-controllers, robot-state-publisher, rqt-robot-steering, rviz, urdf-tutorial, xacro }:
buildRosPackage {
  pname = "ros-kinetic-urdf-sim-tutorial";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf_tutorial-release/archive/release/kinetic/urdf_sim_tutorial/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "edae179c71dd174dfd50f7a85af4e9bfec70c106e1d9b47d73a063d24891a590";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager diff-drive-controller gazebo-ros gazebo-ros-control joint-state-controller position-controllers robot-state-publisher rqt-robot-steering rviz urdf-tutorial xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The urdf_sim_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
