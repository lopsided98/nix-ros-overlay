
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, unique-identifier-msgs, test-msgs, python-cmake-module, rmw-implementation, ament-lint-auto, rcutils, rmw-implementation-cmake, ament-lint-common, rcl-yaml-param-parser, builtin-interfaces, rcl, pythonPackages, rosidl-generator-py, rosgraph-msgs, rcl-interfaces, ament-cmake-pytest, ament-index-python, rcl-action }:
buildRosPackage {
  pname = "ros-eloquent-rclpy";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclpy-release/archive/release/eloquent/rclpy/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "5fb74c29e3b4d252691b63069099b3a0c6802b0f5dc1ebaeee9ff09c9b4bb551";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rmw-implementation-cmake rcl unique-identifier-msgs rcl-yaml-param-parser rmw-implementation rcl-action ];
  checkInputs = [ ament-lint-common test-msgs rosidl-generator-py ament-cmake-pytest pythonPackages.pytest ament-lint-auto ];
  propagatedBuildInputs = [ rcl unique-identifier-msgs rcl-yaml-param-parser rcl-interfaces rmw-implementation builtin-interfaces rosgraph-msgs ament-index-python rcl-action ];
  nativeBuildInputs = [ python-cmake-module ament-cmake ];

  meta = {
    description = ''Package containing the Python client.'';
    license = with lib.licenses; [ asl20 ];
  };
}
