
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, performance-test-fixture, rcpputils, rcutils, rmw, rosidl-default-generators, rosidl-default-runtime, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-foxy-rmw-dds-common";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_dds_common-release/archive/release/foxy/rmw_dds_common/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "654496e63a60cb583415a80dc5858e885d371ed8c0f15f7a90c38f18bdf0a6e8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture ];
  propagatedBuildInputs = [ rcpputils rcutils rmw rosidl-default-runtime rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Define a common interface between DDS implementations of ROS middleware.'';
    license = with lib.licenses; [ asl20 ];
  };
}
