
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, python-cmake-module, rclpy, rpyutils, tf2 }:
buildRosPackage {
  pname = "ros-rolling-tf2-py";
  version = "0.36.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_py/0.36.0-2.tar.gz";
    name = "0.36.0-2.tar.gz";
    sha256 = "4b06be02368eefd025790b45456f94268425bca1273176e5934783497179856d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python-cmake-module ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy rpyutils tf2 ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = "The tf2_py package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
