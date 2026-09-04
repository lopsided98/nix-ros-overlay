
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-mypy, ament-cmake-pytest, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, lifecycle-msgs, python3, python3Packages, rcl, rcl-action, rcl-interfaces, rcl-lifecycle, rcl-logging-interface, rcl-yaml-param-parser, rcpputils, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosgraph-msgs, rosidl-generator-py, rosidl-pycommon, rosidl-runtime-c, rpyutils, service-msgs, test-msgs, type-description-interfaces, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-rclpy";
  version = "11.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclpy-release/archive/release/rolling/rclpy/11.0.3-1.tar.gz";
    name = "11.0.3-1.tar.gz";
    sha256 = "1f0c20e7422d00eadb75be4777dda2eac322643d1566cede523e66b4e732daa8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core python3 python3Packages.pybind11 rmw-implementation-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-mypy ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.pytest python3Packages.pytest-asyncio rosidl-generator-py test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-index-python builtin-interfaces lifecycle-msgs python3Packages.pyyaml python3Packages.typing-extensions rcl rcl-action rcl-interfaces rcl-lifecycle rcl-logging-interface rcl-yaml-param-parser rcpputils rcutils rmw rmw-implementation rosgraph-msgs rosidl-pycommon rosidl-runtime-c rpyutils service-msgs type-description-interfaces unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Package containing the Python client.";
    license = with lib.licenses; [ asl20 ];
  };
}
