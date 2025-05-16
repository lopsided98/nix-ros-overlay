
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, lifecycle-msgs, pybind11-vendor, python3, python3Packages, rcl, rcl-action, rcl-interfaces, rcl-lifecycle, rcl-logging-interface, rcl-yaml-param-parser, rcpputils, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosgraph-msgs, rosidl-generator-py, rosidl-runtime-c, rpyutils, service-msgs, test-msgs, type-description-interfaces, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-rclpy";
  version = "9.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclpy-release/archive/release/rolling/rclpy/9.2.0-1.tar.gz";
    name = "9.2.0-1.tar.gz";
    sha256 = "8d98e48c059cf240a34c31688b16ffec1ce5fccd6cacc6f0d18d796e59d66709";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pybind11-vendor python3 rcpputils rcutils rmw-implementation-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.pytest rosidl-generator-py test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-index-python builtin-interfaces lifecycle-msgs python3Packages.pyyaml python3Packages.typing-extensions rcl rcl-action rcl-interfaces rcl-lifecycle rcl-logging-interface rcl-yaml-param-parser rmw rmw-implementation rosgraph-msgs rosidl-runtime-c rpyutils service-msgs type-description-interfaces unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing the Python client.";
    license = with lib.licenses; [ asl20 ];
  };
}
