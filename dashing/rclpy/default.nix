
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmw-implementation-cmake, rosgraph-msgs, rcl-yaml-param-parser, rcl-action, unique-identifier-msgs, ament-cmake-pytest, rosidl-generator-py, pythonPackages, rmw-implementation, ament-index-python, builtin-interfaces, rcl-interfaces, rcutils, ament-lint-common, test-msgs, python-cmake-module, rcl, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rclpy";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclpy-release/archive/release/dashing/rclpy/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "1ddb666370028a9f27a631d9bbbca3afb97b23ae83c9c2b79cdc7b73e52b20be";
  };

  buildType = "ament_cmake";
  buildInputs = [ unique-identifier-msgs rmw-implementation-cmake rmw-implementation rcl-yaml-param-parser rcl rcutils rcl-action ];
  checkInputs = [ ament-cmake-pytest pythonPackages.pytest rosidl-generator-py ament-lint-common test-msgs rcl-interfaces ament-lint-auto ];
  propagatedBuildInputs = [ unique-identifier-msgs builtin-interfaces rosgraph-msgs rmw-implementation rcl-yaml-param-parser rcl ament-index-python rcl-action ];
  nativeBuildInputs = [ python-cmake-module ament-cmake ];

  meta = {
    description = ''Package containing the Python client.'';
    license = with lib.licenses; [ asl20 ];
  };
}
