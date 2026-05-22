
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, fastcdr, fastdds, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common, rmw-fastrtps-shared-cpp, rosidl-buffer, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-lyrical-rmw-fastrtps-dynamic-cpp";
  version = "9.4.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/lyrical/rmw_fastrtps_dynamic_cpp/9.4.8-1.tar.gz";
    name = "9.4.8-1.tar.gz";
    sha256 = "5ac3135db378e616ce5602556860b6f20bc1e634cd9a034590dabe59cbc831a6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp test-msgs ];
  propagatedBuildInputs = [ fastcdr fastdds rcpputils rcutils rmw rmw-dds-common rmw-fastrtps-shared-cpp rosidl-buffer rosidl-runtime-c rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake-ros-core ];

  meta = {
    description = "Implement the ROS middleware interface using introspection type support.";
    license = with lib.licenses; [ asl20 ];
  };
}
