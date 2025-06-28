
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, geometry-msgs, pybind11-vendor, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-py-binding-tools";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_binding_tools-release/archive/release/kilted/py_binding_tools/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "04ba08788166a581d12e911752cfde676c580b53da6010c613fd805ca6b7f0e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common rclpy std-msgs ];
  propagatedBuildInputs = [ geometry-msgs pybind11-vendor rclcpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Python binding tools for C++";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
