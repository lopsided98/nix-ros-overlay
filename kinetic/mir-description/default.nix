
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-controller, diff-drive-controller, catkin, position-controllers, rviz, urdf, robot-state-publisher, roslaunch, joint-state-publisher, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-mir-description";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_description/1.0.3-0.tar.gz;
    sha256 = "caf5b1cdbe34b59f999dc0a5fdb5f735670aac8fbde7d6c13d4697a081a61271";
  };

  propagatedBuildInputs = [ joint-state-controller diff-drive-controller position-controllers rviz urdf robot-state-publisher joint-state-publisher xacro gazebo-ros-control ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''URDF description of the MiR100 robot'';
    #license = lib.licenses.BSD;
  };
}
