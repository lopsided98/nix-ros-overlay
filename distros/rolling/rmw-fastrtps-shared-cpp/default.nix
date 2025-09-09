
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, fastcdr, fastdds, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common, rmw-security-common, rosidl-dynamic-typesupport, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-rolling-rmw-fastrtps-shared-cpp";
  version = "9.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/rolling/rmw_fastrtps_shared_cpp/9.4.2-1.tar.gz";
    name = "9.4.2-1.tar.gz";
    sha256 = "4e09ad6b0366182c3dad0beb9c32cf2b895c19e437ae92662bf007588a142e71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core rosidl-runtime-c ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastdds rcpputils rcutils rmw rmw-dds-common rmw-security-common rosidl-dynamic-typesupport rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Code shared on static and dynamic type support of rmw_fastrtps_cpp.";
    license = with lib.licenses; [ asl20 ];
  };
}
