
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, performance-test-fixture, rcpputils, rcutils, rmw, rmw-security-common, rosidl-default-generators, rosidl-default-runtime, rosidl-runtime-c, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-kilted-rmw-dds-common";
  version = "3.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_dds_common-release/archive/release/kilted/rmw_dds_common/3.2.1-2.tar.gz";
    name = "3.2.1-2.tar.gz";
    sha256 = "ef2e5fafa976eb0fe5172be8adf63be6d2204d37d5aa835267c9a6dbee1d9182";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture ];
  propagatedBuildInputs = [ rcpputils rcutils rmw rmw-security-common rosidl-default-runtime rosidl-runtime-c rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Define a common interface between DDS implementations of ROS middleware.";
    license = with lib.licenses; [ asl20 ];
  };
}
