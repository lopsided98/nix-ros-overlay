
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, ament-cmake, gazebo-plugins, gazebo-dev, gazebo-msgs }:
buildRosPackage {
  pname = "ros-dashing-gazebo-ros-pkgs";
  version = "3.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/dashing/gazebo_ros_pkgs/3.3.4-1.tar.gz";
    name = "3.3.4-1.tar.gz";
    sha256 = "f9511e73e2bbfcce88cd916d414939a695f0c197e51269a5620e71e2c2aa06c5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-msgs gazebo-dev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interface for using ROS with the <a href="http://gazebosim.org/">Gazebo</a> simulator.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
