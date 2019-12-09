
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, rosidl-generator-c, rcl, ament-lint-common, ament-cmake-gtest, osrf-testing-tools-cpp, lifecycle-msgs, rmw-implementation, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rcl-lifecycle";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/eloquent/rcl_lifecycle/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "e18b46b0be4df73f9a3cca62f006896ab55d658604a690c19a354f859cce10bc";
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
