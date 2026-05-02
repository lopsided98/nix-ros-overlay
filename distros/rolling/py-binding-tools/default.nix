
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, geometry-msgs, python3Packages, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-py-binding-tools";
  version = "2.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_binding_tools-release/archive/release/rolling/py_binding_tools/2.1.2-3.tar.gz";
    name = "2.1.2-3.tar.gz";
    sha256 = "fffc648a344581fe4e29ffc1a0a475137e0547ea06c4e433932f5d6985699669";
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
