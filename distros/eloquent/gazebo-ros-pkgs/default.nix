
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-msgs, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-eloquent-gazebo-ros-pkgs";
  version = "3.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/eloquent/gazebo_ros_pkgs/3.4.4-1.tar.gz";
    name = "3.4.4-1.tar.gz";
    sha256 = "b6d46093434e5d634b679241205860f88e7b2c115a2b232ee29e123f34fb16be";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-dev gazebo-msgs gazebo-plugins gazebo-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interface for using ROS with the <a href="http://gazebosim.org/">Gazebo</a> simulator.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
