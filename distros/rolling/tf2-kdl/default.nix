
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-cmake-ros-core, builtin-interfaces, eigen, eigen3-cmake-module, geometry-msgs, orocos-kdl, python3Packages, rclcpp, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-kdl";
  version = "0.46.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_kdl/0.46.2-1.tar.gz";
    name = "0.46.2-1.tar.gz";
    sha256 = "de15b17ebfc6064eefa1bcd38e37d519daba0a4a5358ca3adb8c03a7e5e43de7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros-core rclcpp ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs orocos-kdl python3Packages.pykdl tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python eigen3-cmake-module ];

  meta = {
    description = "KDL binding for tf2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
