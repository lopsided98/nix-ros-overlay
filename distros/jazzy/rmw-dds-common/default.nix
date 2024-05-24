
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, performance-test-fixture, rcpputils, rcutils, rmw, rosidl-default-generators, rosidl-default-runtime, rosidl-runtime-c, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-jazzy-rmw-dds-common";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_dds_common-release/archive/release/jazzy/rmw_dds_common/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "8605cfbaf01b57aa256a26017e04ef340a06a0f88e06ff62e959a1c7c512fb3f";
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
