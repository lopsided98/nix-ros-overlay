
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gurumdds-3, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, gurumdds-cmake-module, rcutils, rmw, rmw-dds-common, rosidl-cmake, rosidl-generator-dds-idl, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, tracetools }:
buildRosPackage {
  pname = "ros-kilted-rmw-gurumdds-cpp";
  version = "6.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_gurumdds-release/archive/release/kilted/rmw_gurumdds_cpp/6.0.1-1.tar.gz";
    name = "6.0.1-1.tar.gz";
    sha256 = "b4c8eac55c39c707e2ca08a304031fb2bee59101605a6b7e47fca9816a1fb304";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core rosidl-cmake rosidl-generator-dds-idl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_gurumdds-3.2 gurumdds-cmake-module rcutils rmw rmw-dds-common rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core rosidl-cmake ];

  meta = {
    description = "Implement the ROS middleware interface using GurumNetworks GurumDDS static code generation in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
