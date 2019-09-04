
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, ament-cmake, gazebo-plugins, gazebo-dev, gazebo-msgs }:
buildRosPackage {
  pname = "ros-dashing-gazebo-ros-pkgs";
  version = "3.3.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/dashing/gazebo_ros_pkgs/3.3.3-1.tar.gz;
    sha256 = "4c6480d36d64451f1791068122eb04659a638a20af95268dcb4ca691c42f3f34";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-msgs gazebo-dev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interface for using ROS with the <a href="http://gazebosim.org/">Gazebo</a> simulator.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
