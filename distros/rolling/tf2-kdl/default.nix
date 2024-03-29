
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, builtin-interfaces, geometry-msgs, orocos-kdl-vendor, rclcpp, tf2, tf2-msgs, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-kdl";
  version = "0.36.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_kdl/0.36.1-1.tar.gz";
    name = "0.36.1-1.tar.gz";
    sha256 = "dbc68ef9e055cf0f6a4d4caf9d94dd435762bcef687d23ebedc6f08857aa461e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest rclcpp tf2-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs orocos-kdl-vendor tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "KDL binding for tf2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
