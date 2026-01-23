
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, performance-test-fixture, rcpputils, rcutils, rmw, rosidl-default-generators, rosidl-default-runtime, rosidl-runtime-c, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-jazzy-rmw-dds-common";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_dds_common-release/archive/release/jazzy/rmw_dds_common/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "5f8c8a8273bc089fdcdee85dbd82ec619beaff1eea65b58db091323d0d2c2bfa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture ];
  propagatedBuildInputs = [ rcpputils rcutils rmw rosidl-default-runtime rosidl-runtime-c rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Define a common interface between DDS implementations of ROS middleware.";
    license = with lib.licenses; [ asl20 ];
  };
}
