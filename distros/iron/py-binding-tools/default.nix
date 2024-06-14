
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, geometry-msgs, pybind11-vendor, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-iron-py-binding-tools";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/py_binding_tools-release/archive/release/iron/py_binding_tools/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "824d47ccb445c85ae268dc64ad7a008b2333f06a4737245e03a015de6548c23f";
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
