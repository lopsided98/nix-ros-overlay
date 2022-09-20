
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-msgs, gazebo-plugins, gazebo-ros }:
buildRosPackage {
  pname = "ros-galactic-gazebo-ros-pkgs";
  version = "3.5.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/galactic/gazebo_ros_pkgs/3.5.2-5.tar.gz";
    name = "3.5.2-5.tar.gz";
    sha256 = "243d182e4efcd528385b79bed507008a954c30439af344094d4915f35c717e8e";
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
