
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, geometry-msgs, python3Packages, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-py-binding-tools";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_binding_tools-release/archive/release/lyrical/py_binding_tools/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "abfbfda3f166cae2ab7ca18d7d339c3ef4e001aa654ddb08233c54e541c2265c";
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
