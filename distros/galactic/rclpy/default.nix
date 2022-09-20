
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, pybind11-vendor, python-cmake-module, pythonPackages, rcl, rcl-action, rcl-interfaces, rcl-logging-interface, rcl-yaml-param-parser, rcpputils, rcutils, rmw-implementation, rmw-implementation-cmake, rosgraph-msgs, rosidl-generator-py, rpyutils, test-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-galactic-rclpy";
  version = "1.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclpy-release/archive/release/galactic/rclpy/1.9.2-1.tar.gz";
    name = "1.9.2-1.tar.gz";
    sha256 = "ee9ae4aed61fa4486c1d585464a25b059fff049ddd0267b751d6b89d8f3d5cf2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pybind11-vendor python-cmake-module rcpputils rcutils rmw-implementation-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common pythonPackages.pytest rosidl-generator-py test-msgs ];
  propagatedBuildInputs = [ ament-index-python builtin-interfaces rcl rcl-action rcl-interfaces rcl-logging-interface rcl-yaml-param-parser rmw-implementation rosgraph-msgs rpyutils unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = ''Package containing the Python client.'';
    license = with lib.licenses; [ asl20 ];
  };
}
