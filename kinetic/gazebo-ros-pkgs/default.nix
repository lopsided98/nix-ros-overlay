
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazebo-plugins, gazebo-dev, gazebo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-ros-pkgs";
  version = "2.5.18-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_ros_pkgs/2.5.18-1.tar.gz;
    sha256 = "7ee146b059667c96398adbf85d8989dbbfe32a6c41344e22b8faf45797c16eae";
  };

  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-msgs gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for using ROS with the <a href="http://gazebosim.org/">Gazebo</a> simulator.'';
    #license = lib.licenses.BSD,LGPL,Apache 2.0;
  };
}
