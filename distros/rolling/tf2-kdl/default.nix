
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, builtin-interfaces, geometry-msgs, orocos-kdl-vendor, python-orocos-kdl-vendor, rclcpp, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-kdl";
  version = "0.43.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_kdl/0.43.1-1.tar.gz";
    name = "0.43.1-1.tar.gz";
    sha256 = "b484ac70e21d09f3c110dee1b29a2393d9f547f17d25d37686fe6db7f5da44d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest rclcpp ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs orocos-kdl-vendor python-orocos-kdl-vendor tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "KDL binding for tf2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
