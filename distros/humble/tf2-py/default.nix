
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, python-cmake-module, rclpy, rpyutils, tf2 }:
buildRosPackage {
  pname = "ros-humble-tf2-py";
  version = "0.25.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_py/0.25.3-1.tar.gz";
    name = "0.25.3-1.tar.gz";
    sha256 = "d8a718bf8b3bb747540b8d2345bd9ac922c21651926859f63459869b030be594";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python-cmake-module ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy rpyutils tf2 ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = ''The tf2_py package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
