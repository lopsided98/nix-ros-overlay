
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, python-cmake-module, pythonPackages, rcl, rcl-action, rcl-interfaces, rcl-yaml-param-parser, rcutils, rmw-implementation, rmw-implementation-cmake, rosidl-generator-py, test-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-crystal-rclpy";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclpy-release/archive/release/crystal/rclpy/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "a1d925898bd2968eb9c40b232502600daceea28428bcb859c2d633cfd3a8ff48";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rmw-implementation-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common pythonPackages.pytest rcl-interfaces rosidl-generator-py test-msgs ];
  propagatedBuildInputs = [ ament-index-python builtin-interfaces rcl rcl-action rcl-yaml-param-parser rmw-implementation unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = ''Package containing the Python client.'';
    license = with lib.licenses; [ asl20 ];
  };
}
