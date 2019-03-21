
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, wamv-description, usv-gazebo-plugins, velodyne-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-kinetic-wamv-gazebo";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/vmrc-release/archive/release/kinetic/wamv_gazebo/0.3.2-0.tar.gz;
    sha256 = "4038c6923a803b428329b65f796262626db1fe949d9213c36c7553f528da2867";
  };

  propagatedBuildInputs = [ velodyne-gazebo-plugins usv-gazebo-plugins xacro wamv-description ];
  nativeBuildInputs = [ usv-gazebo-plugins velodyne-gazebo-plugins catkin xacro wamv-description ];

  meta = {
    description = ''Provides templates and examples for integrating the WAM-V model into gazebo with dynamics, sensors, etc.'';
    #license = lib.licenses.Apache 2.0;
  };
}
