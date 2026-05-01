
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, geometry-msgs, python3Packages, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-py-binding-tools";
  version = "2.1.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_binding_tools-release/archive/release/lyrical/py_binding_tools/2.1.2-4.tar.gz";
    name = "2.1.2-4.tar.gz";
    sha256 = "a85c2e7111503a0611177cf61573a447f7d01a40b374c8d6ddbca3a81f2d2e5f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest rclpy std-msgs ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pybind11 rclcpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Python binding tools for C++";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
