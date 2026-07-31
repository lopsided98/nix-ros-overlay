
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, fastcdr, fastdds, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common, rmw-security-common, rosidl-dynamic-typesupport, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-kilted-rmw-fastrtps-shared-cpp";
  version = "9.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/kilted/rmw_fastrtps_shared_cpp/9.3.5-1.tar.gz";
    name = "9.3.5-1.tar.gz";
    sha256 = "2ae0f6ec88ba3dfbd6b4a7cb5a1a2d24bc89da7521aa4b0120feb62cad09643e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core rosidl-runtime-c ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ fastcdr fastdds rcpputils rcutils rmw rmw-dds-common rmw-security-common rosidl-dynamic-typesupport rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake-ros-core ];

  meta = {
    description = "Code shared on static and dynamic type support of rmw_fastrtps_cpp.";
    license = with lib.licenses; [ asl20 ];
  };
}
