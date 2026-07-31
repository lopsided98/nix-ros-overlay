
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, builtin-interfaces, eigen, eigen3-cmake-module, geometry-msgs, orocos-kdl, python3Packages, rclcpp, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-lyrical-tf2-kdl";
  version = "0.45.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/lyrical/tf2_kdl/0.45.9-1.tar.gz";
    name = "0.45.9-1.tar.gz";
    sha256 = "20bd7748e7ac4b8d82267b48523a62694c42562529b70e398b118c8a9bd845ba";
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
