
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, performance-test-fixture, rcpputils, rcutils, rmw, rmw-security-common, rosidl-default-generators, rosidl-default-runtime, rosidl-runtime-c, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-rolling-rmw-dds-common";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_dds_common-release/archive/release/rolling/rmw_dds_common/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "3467e2a6ce610ba1d5ac6ddd396f4b34531df24f262e588753f293c2cce82bb7";
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
