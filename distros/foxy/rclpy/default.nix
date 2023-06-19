
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, python-cmake-module, pythonPackages, rcl, rcl-action, rcl-interfaces, rcl-yaml-param-parser, rcutils, rmw-implementation, rmw-implementation-cmake, rosgraph-msgs, rosidl-generator-py, rpyutils, test-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-foxy-rclpy";
  version = "1.0.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclpy-release/archive/release/foxy/rclpy/1.0.13-1.tar.gz";
    name = "1.0.13-1.tar.gz";
    sha256 = "1518a534059140c3d21f5ed360e00c80323051287283f1fcae2ae206806b5da2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python-cmake-module rcutils rmw-implementation-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common pythonPackages.pytest rosidl-generator-py test-msgs ];
  propagatedBuildInputs = [ ament-index-python builtin-interfaces rcl rcl-action rcl-interfaces rcl-yaml-param-parser rmw-implementation rosgraph-msgs rpyutils unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = ''Package containing the Python client.'';
    license = with lib.licenses; [ asl20 ];
  };
}
