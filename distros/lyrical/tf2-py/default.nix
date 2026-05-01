
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, python3, rclpy, rpyutils, tf2 }:
buildRosPackage {
  pname = "ros-lyrical-tf2-py";
  version = "0.45.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/lyrical/tf2_py/0.45.7-3.tar.gz";
    name = "0.45.7-3.tar.gz";
    sha256 = "154f0f810fcd21e2ade7a3590a7a4dcf3aab23178212239498ca75298ade7108";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy rpyutils tf2 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Python bindings for the tf2 library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
