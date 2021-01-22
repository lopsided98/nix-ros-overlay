
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diff-drive-controller, gazebo-ros-control, joint-state-controller, joint-state-publisher, position-controllers, robot-state-publisher, roslaunch, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-mir-description";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_description/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "96f00a1306122ccc1a0be17b9182b6dbf307ffd5ae80f95b6b552787336e44d8";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ diff-drive-controller gazebo-ros-control joint-state-controller joint-state-publisher position-controllers robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
