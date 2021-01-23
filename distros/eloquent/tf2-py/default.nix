
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, builtin-interfaces, geometry-msgs, python-cmake-module, rclpy, tf2 }:
buildRosPackage {
  pname = "ros-eloquent-tf2-py";
  version = "0.12.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/tf2_py/0.12.6-1.tar.gz";
    name = "0.12.6-1.tar.gz";
    sha256 = "858d720bf97ff22ecb0dac76761b22855106505f74a7bf924aedb0f15fa6820e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy tf2 ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = ''The tf2_py package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
