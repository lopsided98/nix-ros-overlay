
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, geometry-msgs, pybind11-vendor, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-py-binding-tools";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_binding_tools-release/archive/release/rolling/py_binding_tools/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "525c3a71afb7b26e309326960eec704814b9f255425a904724518130e35b52d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest rclpy std-msgs ];
  propagatedBuildInputs = [ geometry-msgs pybind11-vendor rclcpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Python binding tools for C++";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
