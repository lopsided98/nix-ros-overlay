
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, gazebo-msgs, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-ros-pkgs";
  version = "2.5.19-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_ros_pkgs/2.5.19-1.tar.gz";
    name = "2.5.19-1.tar.gz";
    sha256 = "f58f378fc8c5792eb42e4a348252276e0a39fd84521a97118ce2bb4766f68062";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-dev gazebo-msgs gazebo-plugins gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for using ROS with the <a href="http://gazebosim.org/">Gazebo</a> simulator.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
