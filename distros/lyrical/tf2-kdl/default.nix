
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, builtin-interfaces, eigen, eigen3-cmake-module, geometry-msgs, orocos-kdl, python3Packages, rclcpp, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-lyrical-tf2-kdl";
  version = "0.45.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/lyrical/tf2_kdl/0.45.7-3.tar.gz";
    name = "0.45.7-3.tar.gz";
    sha256 = "af8cd065da9b627979736d4b511c2718882d4087605fd03355a4531a7c9bf7d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-gtest rclcpp ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs orocos-kdl python3Packages.pykdl tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python eigen3-cmake-module ];

  meta = {
    description = "KDL binding for tf2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
