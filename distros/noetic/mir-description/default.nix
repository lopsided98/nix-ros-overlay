
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diff-drive-controller, gazebo-plugins, gazebo-ros-control, hector-gazebo-plugins, joint-state-controller, joint-state-publisher, joint-state-publisher-gui, position-controllers, robot-state-publisher, roslaunch, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-mir-description";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_description/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "b6206ed02b24e22354bc239fafa903d9cf6618251656d81b8e6093e89c9105f2";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ diff-drive-controller gazebo-plugins gazebo-ros-control hector-gazebo-plugins joint-state-controller joint-state-publisher joint-state-publisher-gui position-controllers robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the MiR robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
