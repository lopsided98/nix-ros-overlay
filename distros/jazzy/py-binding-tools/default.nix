
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, geometry-msgs, python3Packages, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-py-binding-tools";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/py_binding_tools-release/archive/release/jazzy/py_binding_tools/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "6ffd2b7257d92fe2ad1371b342ed2a5200bf0272cecc5b95265f3704344b4e44";
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
