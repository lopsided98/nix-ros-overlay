
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, python3, rclpy, rpyutils, tf2 }:
buildRosPackage {
  pname = "ros-rolling-tf2-py";
  version = "0.43.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_py/0.43.1-1.tar.gz";
    name = "0.43.1-1.tar.gz";
    sha256 = "71bd7a7c9e0b3dec5be543a48c739dbcedc64e5c31263df1f1499fde6438b8f7";
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
