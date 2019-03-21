
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ur-gazebo, ur10-moveit-config, ur-description, ur-kinematics, catkin, ur-bringup, ur-msgs, ur3-moveit-config, ur-driver, ur5-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-universal-robot";
  version = "1.2.1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/universal_robot/1.2.1-0.tar.gz;
    sha256 = "e6261be0db566fe6bd17abab5df61eed0e2fb9eb6bd4cd057d04ba0ec1f22153";
  };

  propagatedBuildInputs = [ ur-gazebo ur10-moveit-config ur-description ur-kinematics ur-bringup ur-msgs ur3-moveit-config ur-driver ur5-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drivers, description, and utilities for Universal Robot Arms.'';
    #license = lib.licenses.BSD;
  };
}
