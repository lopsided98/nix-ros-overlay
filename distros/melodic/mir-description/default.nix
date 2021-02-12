
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diff-drive-controller, gazebo-ros-control, joint-state-controller, joint-state-publisher, position-controllers, robot-state-publisher, roslaunch, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-mir-description";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_description/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "0564f2d3ca0839e459e590680073f6556f78b49e3d0ed332b4dc039245e1792d";
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
