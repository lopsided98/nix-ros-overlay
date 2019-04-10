
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-controller, diff-drive-controller, catkin, position-controllers, rviz, urdf, robot-state-publisher, roslaunch, joint-state-publisher, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-lunar-mir-description";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/mir_description/1.0.3-0.tar.gz;
    sha256 = "e48fde176c154d7ad98fe4f516cef43ea600365cd9aad2fd73e5816957e27b4d";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-controller diff-drive-controller position-controllers rviz urdf robot-state-publisher joint-state-publisher xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the MiR100 robot'';
    #license = lib.licenses.BSD;
  };
}
