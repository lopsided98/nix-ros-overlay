
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gurumdds-3, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, fastcdr, gurumdds-cmake-module, rcpputils, rcutils, rmw, rmw-dds-common, rmw-fastrtps-shared-cpp, rosidl-buffer-backend-registry, rosidl-cmake, rosidl-dynamic-typesupport, rosidl-dynamic-typesupport-fastrtps, rosidl-generator-dds-idl, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-lyrical-rmw-gurumdds-cpp";
  version = "7.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_gurumdds-release/archive/release/lyrical/rmw_gurumdds_cpp/7.0.0-3.tar.gz";
    name = "7.0.0-3.tar.gz";
    sha256 = "9b87a8bd24e70b2e6c6d62ea71528d2305b9e6e7ae36cd0aa15e821e4a376e98";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core rosidl-cmake rosidl-generator-dds-idl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_gurumdds-3.2 fastcdr gurumdds-cmake-module rcpputils rcutils rmw rmw-dds-common rmw-fastrtps-shared-cpp rosidl-buffer-backend-registry rosidl-dynamic-typesupport rosidl-dynamic-typesupport-fastrtps rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core rosidl-cmake ];

  meta = {
    description = "Implement the ROS middleware interface using GurumNetworks GurumDDS static code generation in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
