
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, rosidl-generator-c, rcl, ament-lint-common, ament-cmake-gtest, osrf-testing-tools-cpp, lifecycle-msgs, rmw-implementation, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rcl-lifecycle";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/crystal/rcl_lifecycle/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "e10ccb57fc49fd78c8f892a991f2dbcf10ac160216b751ed3b66b87f26cb5d18";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rcl rmw-implementation rosidl-generator-c lifecycle-msgs ];
  checkInputs = [ ament-lint-auto osrf-testing-tools-cpp ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ rcutils rcl rmw-implementation rosidl-generator-c lifecycle-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a C-based lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
