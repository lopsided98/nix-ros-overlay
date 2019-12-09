
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, unique-identifier-msgs, test-msgs, python-cmake-module, rmw-implementation, ament-lint-auto, rcutils, rmw-implementation-cmake, ament-lint-common, rcl-yaml-param-parser, builtin-interfaces, rcl, pythonPackages, rosidl-generator-py, rosgraph-msgs, rcl-interfaces, ament-cmake-pytest, ament-index-python, rcl-action }:
buildRosPackage {
  pname = "ros-dashing-rclpy";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclpy-release/archive/release/dashing/rclpy/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "367c1f3ea1a7f087f46d4c0ed4cacbf6c1afa8a7385db82fb26922a1a37c505b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rmw-implementation-cmake rcl unique-identifier-msgs rcl-yaml-param-parser rmw-implementation rcl-action ];
  checkInputs = [ ament-lint-common test-msgs rosidl-generator-py rcl-interfaces ament-cmake-pytest pythonPackages.pytest ament-lint-auto ];
  propagatedBuildInputs = [ rcl unique-identifier-msgs rcl-yaml-param-parser rmw-implementation builtin-interfaces rosgraph-msgs ament-index-python rcl-action ];
  nativeBuildInputs = [ python-cmake-module ament-cmake ];

  meta = {
    description = ''Package containing the Python client.'';
    license = with lib.licenses; [ asl20 ];
  };
}
