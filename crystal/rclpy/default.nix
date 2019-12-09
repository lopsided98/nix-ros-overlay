
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rcutils, rmw-implementation-cmake, rcl, rcl-action, pythonPackages, ament-lint-common, ament-cmake, unique-identifier-msgs, rcl-yaml-param-parser, test-msgs, rosidl-generator-py, python-cmake-module, rcl-interfaces, ament-cmake-pytest, rmw-implementation, builtin-interfaces, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rclpy";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclpy-release/archive/release/crystal/rclpy/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "a1d925898bd2968eb9c40b232502600daceea28428bcb859c2d633cfd3a8ff48";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rmw-implementation-cmake rcl unique-identifier-msgs rcl-yaml-param-parser rmw-implementation rcl-action ];
  checkInputs = [ ament-lint-common test-msgs rosidl-generator-py rcl-interfaces ament-cmake-pytest pythonPackages.pytest ament-lint-auto ];
  propagatedBuildInputs = [ rcl unique-identifier-msgs rcl-yaml-param-parser rmw-implementation builtin-interfaces ament-index-python rcl-action ];
  nativeBuildInputs = [ python-cmake-module ament-cmake ];

  meta = {
    description = ''Package containing the Python client.'';
    license = with lib.licenses; [ asl20 ];
  };
}
