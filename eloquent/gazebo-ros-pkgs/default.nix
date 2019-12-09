
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-msgs, gazebo-ros, gazebo-plugins, gazebo-dev }:
buildRosPackage {
  pname = "ros-eloquent-gazebo-ros-pkgs";
  version = "3.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/eloquent/gazebo_ros_pkgs/3.4.2-1.tar.gz";
    name = "3.4.2-1.tar.gz";
    sha256 = "1e7fa96f8fbb9d74c4f5ff4d6b5bfa85a0944c16ed22cd575122e193c16bd9f9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-ros gazebo-msgs gazebo-plugins gazebo-dev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interface for using ROS with the <a href="http://gazebosim.org/">Gazebo</a> simulator.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
