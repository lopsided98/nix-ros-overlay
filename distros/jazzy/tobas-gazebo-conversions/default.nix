
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, gz-math-vendor, gz-msgs-vendor, tobas-kdl }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-conversions";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_conversions/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "7be60f408ebcf592f1b5be6077bc626363f9846094821334aa8917ba668f509a";
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
