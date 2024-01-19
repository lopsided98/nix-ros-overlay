
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-msgs, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-rolling-gazebo-ros-pkgs";
  version = "3.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/rolling/gazebo_ros_pkgs/3.7.0-2.tar.gz";
    name = "3.7.0-2.tar.gz";
    sha256 = "d82c1d83194e575f07b72b256d41a4a119feba6ade2a7e9a193974a12b433c9a";
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
