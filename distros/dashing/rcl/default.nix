
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, osrf-testing-tools-cpp, rcl-interfaces, rcl-logging-noop, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosidl-default-runtime, rosidl-generator-c, test-msgs, tinydir-vendor }:
buildRosPackage {
  pname = "ros-dashing-rcl";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/dashing/rcl/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "bd9ac33629ee0384c4ce992ee537e3094e37b52948594ba799d2a87ce7456710";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake osrf-testing-tools-cpp rmw rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ ament-cmake rcl-interfaces rcl-logging-noop rcutils rmw rmw-implementation rosidl-default-runtime rosidl-generator-c tinydir-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library common implementation.
    This package contains an API which builds on the ROS middleware API and is optionally built upon by the other ROS client libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
