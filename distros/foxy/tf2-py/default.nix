
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, python-cmake-module, rclpy, rpyutils, tf2 }:
buildRosPackage {
  pname = "ros-foxy-tf2-py";
  version = "0.13.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2_py/0.13.6-1.tar.gz";
    name = "0.13.6-1.tar.gz";
    sha256 = "5af922fce58f9e5bcf81ab89801d3689e02f6393942e358200273c042f080e5d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy rpyutils tf2 ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = ''The tf2_py package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
