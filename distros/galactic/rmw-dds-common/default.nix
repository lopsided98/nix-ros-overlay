
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, performance-test-fixture, rcpputils, rcutils, rmw, rosidl-default-generators, rosidl-default-runtime, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-galactic-rmw-dds-common";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_dds_common-release/archive/release/galactic/rmw_dds_common/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "eb06e88b4f9eeffd43e5296ced6bb214085ce8c8a43d87cc590669431a53ccf9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture ];
  propagatedBuildInputs = [ rcpputils rcutils rmw rosidl-default-runtime rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Define a common interface between DDS implementations of ROS middleware.'';
    license = with lib.licenses; [ asl20 ];
  };
}
