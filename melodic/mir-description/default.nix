
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-controller, diff-drive-controller, catkin, position-controllers, rviz, urdf, robot-state-publisher, roslaunch, joint-state-publisher, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-mir-description";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_description/1.0.3-0.tar.gz;
    sha256 = "1673a6c78f1655851cd913be6057e0d5eeedf8c77ff1d22fa5a639cf6f22a522";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-controller diff-drive-controller position-controllers rviz urdf robot-state-publisher joint-state-publisher xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the MiR100 robot'';
    #license = lib.licenses.BSD;
  };
}
