
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common, rmw-fastrtps-shared-cpp, rosidl-dynamic-typesupport, rosidl-dynamic-typesupport-fastrtps, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-jazzy-rmw-fastrtps-cpp";
  version = "8.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/jazzy/rmw_fastrtps_cpp/8.4.4-1.tar.gz";
    name = "8.4.4-1.tar.gz";
    sha256 = "b19beff50d6ee341d54805c2b777a14e63094fdfa6fd71084221ee86114f1437";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp test-msgs ];
  propagatedBuildInputs = [ fastcdr fastrtps fastrtps-cmake-module rcpputils rcutils rmw rmw-dds-common rmw-fastrtps-shared-cpp rosidl-dynamic-typesupport rosidl-dynamic-typesupport-fastrtps rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake-ros fastrtps-cmake-module ];

  meta = {
    description = "Implement the ROS middleware interface using eProsima FastRTPS static code generation in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
