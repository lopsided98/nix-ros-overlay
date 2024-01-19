
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-msgs, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-iron-gazebo-ros-pkgs";
  version = "3.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/iron/gazebo_ros_pkgs/3.7.0-3.tar.gz";
    name = "3.7.0-3.tar.gz";
    sha256 = "b33d9c5ed9dfa7144fec53c2c2e55bdc34faefc9212d9f38624a9406c02d906e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-dev gazebo-msgs gazebo-plugins gazebo-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interface for using ROS with the <a href="http://gazebosim.org/">Gazebo</a> simulator.'';
    license = with lib.licenses; [ "BSD-&-LGPL-&-Apache-2.0" ];
  };
}
