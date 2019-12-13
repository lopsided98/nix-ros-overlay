
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, python-cmake-module, pythonPackages, rcl, rcl-action, rcl-interfaces, rcl-yaml-param-parser, rcutils, rmw-implementation, rmw-implementation-cmake, rosgraph-msgs, rosidl-generator-py, test-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-dashing-rclpy";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclpy-release/archive/release/dashing/rclpy/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "ec1cc65437379102035181934e7a1e68b72d33abfcd94ff08d2a51e6fe527bb7";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rmw-implementation-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common pythonPackages.pytest rosidl-generator-py test-msgs ];
  propagatedBuildInputs = [ ament-index-python builtin-interfaces rcl rcl-action rcl-interfaces rcl-yaml-param-parser rmw-implementation rosgraph-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = ''Package containing the Python client.'';
    license = with lib.licenses; [ asl20 ];
  };
}
