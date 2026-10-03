
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, gz-math-vendor, gz-msgs-vendor, tobas-kdl }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-conversions";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_conversions/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "77a987f9a85169e4585d3fc3e7de6a382410740f989a0f8b56b85d5c9ad12324";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs gz-math-vendor gz-msgs-vendor tobas-kdl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversions between Gazebo math types and Tobas ROS 2 message types.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
