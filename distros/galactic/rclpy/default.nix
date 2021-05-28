
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, pybind11-vendor, python-cmake-module, pythonPackages, rcl, rcl-action, rcl-interfaces, rcl-logging-interface, rcl-yaml-param-parser, rcpputils, rcutils, rmw-implementation, rmw-implementation-cmake, rosgraph-msgs, rosidl-generator-py, rpyutils, test-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-galactic-rclpy";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclpy-release/archive/release/galactic/rclpy/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "6a14b4972bbb03902829fe53292f502a0d44651b73b63772b58e6b9d46d528e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ pybind11-vendor rcpputils rcutils rmw-implementation-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common pythonPackages.pytest rosidl-generator-py test-msgs ];
  propagatedBuildInputs = [ ament-index-python builtin-interfaces rcl rcl-action rcl-interfaces rcl-logging-interface rcl-yaml-param-parser rmw-implementation rosgraph-msgs rpyutils unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = ''Package containing the Python client.'';
    license = with lib.licenses; [ asl20 ];
  };
}
