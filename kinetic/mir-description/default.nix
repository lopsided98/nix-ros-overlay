
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, xacro, urdf, robot-state-publisher, position-controllers, catkin, rviz, diff-drive-controller, gazebo-ros-control, roslaunch, joint-state-controller }:
buildRosPackage {
  pname = "ros-kinetic-mir-description";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_description/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "4ce897c6f81728c305ef19b076ee285156108633af535d7290dc1386fdd5170c";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher xacro urdf robot-state-publisher position-controllers rviz diff-drive-controller gazebo-ros-control joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
