
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, ament-cmake, gazebo-plugins, gazebo-dev, gazebo-msgs }:
buildRosPackage {
  pname = "ros-crystal-gazebo-ros-pkgs";
  version = "3.2.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/crystal/gazebo_ros_pkgs/3.2.0-0.tar.gz";
    name = "3.2.0-0.tar.gz";
    sha256 = "49aa4f9a95b2dc720b6c0494692aad11ab21b9626116ce4b28ef9c6f6c2e6e17";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-msgs gazebo-dev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interface for using ROS with the <a href="http://gazebosim.org/">Gazebo</a> simulator.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
