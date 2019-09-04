
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, unique-identifier-msgs, ament-cmake-pytest, ament-cmake, rmw-implementation-cmake, rosidl-generator-py, ament-lint-common, test-msgs, pythonPackages, python-cmake-module, rmw-implementation, rcl-yaml-param-parser, rcl-interfaces, rcl, ament-index-python, ament-lint-auto, rcutils, rcl-action }:
buildRosPackage {
  pname = "ros-crystal-rclpy";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rclpy-release/archive/release/crystal/rclpy/0.6.4-0.tar.gz;
    sha256 = "f038de02819aeeb4c26500888db7ac0b56115fc9036e6c0816e62a75ad604dc7";
  };

  buildInputs = [ unique-identifier-msgs rmw-implementation-cmake rmw-implementation rcl-yaml-param-parser rcl rcutils rcl-action ];
  checkInputs = [ ament-cmake-pytest pythonPackages.pytest rosidl-generator-py ament-lint-common test-msgs rcl-interfaces ament-lint-auto ];
  propagatedBuildInputs = [ unique-identifier-msgs builtin-interfaces rmw-implementation rcl-yaml-param-parser rcl ament-index-python rcl-action ];
  nativeBuildInputs = [ python-cmake-module ament-cmake ];

  meta = {
    description = ''Package containing the Python client.'';
    license = with lib.licenses; [ asl20 ];
  };
}
