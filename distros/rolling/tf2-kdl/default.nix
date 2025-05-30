
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, builtin-interfaces, geometry-msgs, orocos-kdl-vendor, python-orocos-kdl-vendor, rclcpp, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-kdl";
  version = "0.42.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_kdl/0.42.1-1.tar.gz";
    name = "0.42.1-1.tar.gz";
    sha256 = "5a2fdd11a060ab04f9f7746c0565fb9f6fb8d897820a507b2086d6e2b823547f";
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
