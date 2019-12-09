
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, geometry-msgs, ament-cmake, rclpy, python-cmake-module, tf2, builtin-interfaces, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-tf2-py";
  version = "0.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/tf2_py/0.12.4-1.tar.gz";
    name = "0.12.4-1.tar.gz";
    sha256 = "1a0de98a0300bbf8f89806a7aece41c15938d9d704c62747360a4815e20a0518";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs tf2 ];
  checkInputs = [ ament-lint-auto ament-cmake-pytest ];
  propagatedBuildInputs = [ tf2 builtin-interfaces geometry-msgs rclpy ];
  nativeBuildInputs = [ python-cmake-module ament-cmake ];

  meta = {
    description = ''The tf2_py package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
