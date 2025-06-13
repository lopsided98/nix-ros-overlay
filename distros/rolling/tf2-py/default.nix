
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, python3, rclpy, rpyutils, tf2 }:
buildRosPackage {
  pname = "ros-rolling-tf2-py";
  version = "0.42.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_py/0.42.0-1.tar.gz";
    name = "0.42.0-1.tar.gz";
    sha256 = "ed42c586d4721035cfc86fba413f7ee107d04f9132f823fd2bf62c66a014d0e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3 ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy rpyutils tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tf2_py package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
