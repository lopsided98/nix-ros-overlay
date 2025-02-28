
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, gazebo-msgs, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-noetic-gazebo-ros-pkgs";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/noetic/gazebo_ros_pkgs/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "b37b339540491cd54b6af566e159ca392c6a884d9a9b10fbb9f391b2ace9e30b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-dev gazebo-msgs gazebo-plugins gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Interface for using ROS with the <a href=\"http://gazebosim.org/\">Gazebo</a> simulator.";
    license = with lib.licenses; [ "BSD-&-LGPL-&-Apache-2.0" ];
  };
}
