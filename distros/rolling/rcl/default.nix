
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, rcl-interfaces, rcl-logging-interface, rcl-logging-spdlog, rcl-yaml-param-parser, rcpputils, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosidl-runtime-c, service-msgs, test-msgs, tracetools, type-description-interfaces }:
buildRosPackage {
  pname = "ros-rolling-rcl";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/rolling/rcl/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "80082e5dbd0bd02964397adb840fa08272b2e512533f41f039bd893be284cccb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake mimick-vendor osrf-testing-tools-cpp rcpputils rmw rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ libyaml libyaml-vendor rcl-interfaces rcl-logging-interface rcl-logging-spdlog rcl-yaml-param-parser rcutils rmw rmw-implementation rosidl-runtime-c service-msgs tracetools type-description-interfaces ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library common implementation.
    This package contains an API which builds on the ROS middleware API and is optionally built upon by the other ROS client libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
