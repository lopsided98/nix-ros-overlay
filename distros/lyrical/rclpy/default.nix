
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, lifecycle-msgs, python3, python3Packages, rcl, rcl-action, rcl-interfaces, rcl-lifecycle, rcl-logging-interface, rcl-yaml-param-parser, rcpputils, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosgraph-msgs, rosidl-generator-py, rosidl-pycommon, rosidl-runtime-c, rpyutils, service-msgs, test-msgs, type-description-interfaces, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rclpy";
  version = "10.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclpy-release/archive/release/lyrical/rclpy/10.0.10-1.tar.gz";
    name = "10.0.10-1.tar.gz";
    sha256 = "b7b707d40914c4aa3da262c70ed325a492bc204001bab5b8f2d04a76e4faa73f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3 python3Packages.pybind11 rmw-implementation-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.pytest python3Packages.pytest-asyncio rosidl-generator-py test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-index-python builtin-interfaces lifecycle-msgs python3Packages.pyyaml python3Packages.typing-extensions rcl rcl-action rcl-interfaces rcl-lifecycle rcl-logging-interface rcl-yaml-param-parser rcpputils rcutils rmw rmw-implementation rosgraph-msgs rosidl-pycommon rosidl-runtime-c rpyutils service-msgs type-description-interfaces unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing the Python client.";
    license = with lib.licenses; [ asl20 ];
  };
}
