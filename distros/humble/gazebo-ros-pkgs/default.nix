
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-msgs, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-humble-gazebo-ros-pkgs";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/humble/gazebo_ros_pkgs/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "a2a33a1f034b127279e147825ff44fad2e1d5bd3d7a377ba819a6629e683743a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-dev gazebo-msgs gazebo-plugins gazebo-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interface for using ROS with the <a href=\"http://classic.gazebosim.org/\">Gazebo</a> simulator.";
    license = with lib.licenses; [ "BSD-&-LGPL-&-Apache-2.0" ];
  };
}
