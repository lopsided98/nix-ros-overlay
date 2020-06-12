
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rosidl-default-generators, rosidl-default-runtime, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-foxy-rmw-dds-common";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_dds_common-release/archive/release/foxy/rmw_dds_common/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "678e09398385f0f4714e0ad084b0d8ba016e92a8d508e12bc5ac040e7c392a69";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ rcpputils rcutils rmw rosidl-default-runtime rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Define a common interface between DDS implementations of ROS middleware.'';
    license = with lib.licenses; [ asl20 ];
  };
}
