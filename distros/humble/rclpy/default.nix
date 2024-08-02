
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, pybind11-vendor, python-cmake-module, pythonPackages, rcl, rcl-action, rcl-interfaces, rcl-lifecycle, rcl-logging-interface, rcl-yaml-param-parser, rcpputils, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosgraph-msgs, rosidl-generator-py, rosidl-runtime-c, rpyutils, test-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-rclpy";
  version = "3.3.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclpy-release/archive/release/humble/rclpy/3.3.14-1.tar.gz";
    name = "3.3.14-1.tar.gz";
    sha256 = "0ba3bee35a4514180f47226c13f0db3ef6708bba3d4b7742860ce27870e01455";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pybind11-vendor python-cmake-module rcpputils rcutils rmw-implementation-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common pythonPackages.pytest rosidl-generator-py test-msgs ];
  propagatedBuildInputs = [ ament-index-python builtin-interfaces rcl rcl-action rcl-interfaces rcl-lifecycle rcl-logging-interface rcl-yaml-param-parser rmw rmw-implementation rosgraph-msgs rosidl-runtime-c rpyutils unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = "Package containing the Python client.";
    license = with lib.licenses; [ asl20 ];
  };
}
