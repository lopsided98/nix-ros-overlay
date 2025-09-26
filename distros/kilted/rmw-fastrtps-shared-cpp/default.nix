
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, fastcdr, fastdds, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common, rmw-security-common, rosidl-dynamic-typesupport, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-kilted-rmw-fastrtps-shared-cpp";
  version = "9.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/kilted/rmw_fastrtps_shared_cpp/9.3.3-1.tar.gz";
    name = "9.3.3-1.tar.gz";
    sha256 = "a37e29648b7c363cfa4bb777bc6e4c33d1ccae9ccb64b5f0b51d5b7de0537261";
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
