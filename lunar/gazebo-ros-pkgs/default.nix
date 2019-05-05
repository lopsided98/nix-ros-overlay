
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazebo-plugins, gazebo-dev, gazebo-msgs }:
buildRosPackage {
  pname = "ros-lunar-gazebo-ros-pkgs";
  version = "2.7.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/lunar/gazebo_ros_pkgs/2.7.6-0.tar.gz;
    sha256 = "2160ad4096ca4fc0c0b9ae1e7bb922f5e3b674d2a70344f376fa6ad1f0370ce3";
  };

  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-msgs gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for using ROS with the <a href="http://gazebosim.org/">Gazebo</a> simulator.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
