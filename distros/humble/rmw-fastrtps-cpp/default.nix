
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common, rmw-fastrtps-shared-cpp, rosidl-cmake, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-humble-rmw-fastrtps-cpp";
  version = "6.2.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/humble/rmw_fastrtps_cpp/6.2.11-1.tar.gz";
    name = "6.2.11-1.tar.gz";
    sha256 = "f5e27eae9d4f797920f24e67f77c8d2c19dc807fdd36cb8688a813f9ca201082";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp test-msgs ];
  propagatedBuildInputs = [ fastcdr fastrtps fastrtps-cmake-module rcpputils rcutils rmw rmw-dds-common rmw-fastrtps-shared-cpp rosidl-cmake rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake-ros fastrtps-cmake-module rosidl-cmake ];

  meta = {
    description = "Implement the ROS middleware interface using eProsima FastRTPS static code generation in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
