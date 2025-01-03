
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-dynamic-typesupport, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-jazzy-rmw-fastrtps-shared-cpp";
  version = "8.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/jazzy/rmw_fastrtps_shared_cpp/8.4.1-1.tar.gz";
    name = "8.4.1-1.tar.gz";
    sha256 = "19c154a80e06bb7797b4e704aa642487099ad6abb3b5c54e904fbce8baf45689";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-runtime-c ];
  checkInputs = [ ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rcpputils rcutils rmw rmw-dds-common rosidl-dynamic-typesupport rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros fastrtps-cmake-module ];

  meta = {
    description = "Code shared on static and dynamic type support of rmw_fastrtps_cpp.";
    license = with lib.licenses; [ asl20 ];
  };
}
