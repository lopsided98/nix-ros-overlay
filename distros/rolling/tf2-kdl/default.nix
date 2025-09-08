
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, builtin-interfaces, geometry-msgs, orocos-kdl-vendor, python-orocos-kdl-vendor, rclcpp, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-kdl";
  version = "0.42.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_kdl/0.42.2-1.tar.gz";
    name = "0.42.2-1.tar.gz";
    sha256 = "dab387ed6dffc4d62329d00dd65ddb0ac5c249509b5f4f2fc6cc0da1597b9b7b";
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
