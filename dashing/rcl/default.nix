
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmw-implementation-cmake, rosidl-default-runtime, rosidl-generator-c, ament-cmake-pytest, ament-cmake-gtest, launch, rmw-implementation, osrf-testing-tools-cpp, rmw, tinydir-vendor, launch-testing-ament-cmake, rcl-interfaces, ament-cmake-ros, rcutils, ament-lint-common, test-msgs, launch-testing, rcl-logging-noop, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rcl";
  version = "0.7.6-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rcl-release/archive/release/dashing/rcl/0.7.6-1.tar.gz;
    sha256 = "12c9ef57b371f61ea316dd171297f5ed38ff0829351673c24f6ac6cb51c6c7dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ tinydir-vendor rcl-logging-noop rmw-implementation rcl-interfaces rcutils rosidl-generator-c ];
  checkInputs = [ ament-cmake-pytest rmw-implementation-cmake ament-lint-common test-msgs launch-testing ament-cmake-gtest launch launch-testing-ament-cmake ament-lint-auto osrf-testing-tools-cpp rmw ];
  propagatedBuildInputs = [ rosidl-generator-c ament-cmake rcutils rcl-logging-noop rmw-implementation rcl-interfaces rosidl-default-runtime rmw tinydir-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library common implementation.
    This package contains an API which builds on the ROS middleware API and is optionally built upon by the other ROS client libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
