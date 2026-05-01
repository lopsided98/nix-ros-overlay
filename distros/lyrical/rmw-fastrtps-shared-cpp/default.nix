
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, fastcdr, fastdds, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common, rmw-security-common, rosidl-buffer-backend-registry, rosidl-dynamic-typesupport, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-lyrical-rmw-fastrtps-shared-cpp";
  version = "9.4.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/lyrical/rmw_fastrtps_shared_cpp/9.4.7-3.tar.gz";
    name = "9.4.7-3.tar.gz";
    sha256 = "f1e78ad6a894cbe879c9d6a74134e3d8b080dc7c5bae4cc03ede09fc6bc887bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core rosidl-buffer-backend-registry rosidl-runtime-c ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ fastcdr fastdds rcpputils rcutils rmw rmw-dds-common rmw-security-common rosidl-dynamic-typesupport rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake-ros-core ];

  meta = {
    description = "Code shared on static and dynamic type support of rmw_fastrtps_cpp.";
    license = with lib.licenses; [ asl20 ];
  };
}
