
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-msgs, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-humble-gazebo-ros-pkgs";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/humble/gazebo_ros_pkgs/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "593ace42739a7d5075e0fa3daa40cc9f12702a438fde88672fa65bc75bab6fd4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-dev gazebo-msgs gazebo-plugins gazebo-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interface for using ROS with the <a href="http://gazebosim.org/">Gazebo</a> simulator.'';
    license = with lib.licenses; [ "BSD-&-LGPL-&-Apache-2.0" ];
  };
}
