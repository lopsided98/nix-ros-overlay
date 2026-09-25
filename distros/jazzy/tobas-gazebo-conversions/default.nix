
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, gz-math-vendor, gz-msgs-vendor, tobas-kdl }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-conversions";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_conversions/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "b7fc1a1347d22e2a39706d7d41dc26b1921b2f9f8043186554502c82011cdac0";
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
