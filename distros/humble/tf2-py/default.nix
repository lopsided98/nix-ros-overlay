
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, python-cmake-module, rclpy, rpyutils, tf2 }:
buildRosPackage {
  pname = "ros-humble-tf2-py";
  version = "0.25.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_py/0.25.13-1.tar.gz";
    name = "0.25.13-1.tar.gz";
    sha256 = "a8445fec7bc0cea88c31bfc2af87d9d708ffff72e7a466abced88269b6ec20c7";
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
