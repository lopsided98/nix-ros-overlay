
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, mimick-vendor, osrf-testing-tools-cpp, rcl-interfaces, rcl-logging-interface, rcl-logging-spdlog, rcl-yaml-param-parser, rcpputils, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosidl-runtime-c, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-humble-rcl";
  version = "5.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/humble/rcl/5.3.3-1.tar.gz";
    name = "5.3.3-1.tar.gz";
    sha256 = "545c51fa8c092f1afa1ac87a7ada351bf7aefea80d403f96dc363f6f2fa74e71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake mimick-vendor osrf-testing-tools-cpp rcpputils rmw rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ rcl-interfaces rcl-logging-interface rcl-logging-spdlog rcl-yaml-param-parser rcutils rmw rmw-implementation rosidl-runtime-c tracetools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library common implementation.
    This package contains an API which builds on the ROS middleware API and is optionally built upon by the other ROS client libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
