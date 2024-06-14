
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, geometry-msgs, pybind11-vendor, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-py-binding-tools";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/py_binding_tools-release/archive/release/humble/py_binding_tools/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "98732951307d979c5d7364f3f6ff3ac69e6f26c32fbfb8802e6ec2f863082484";
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
