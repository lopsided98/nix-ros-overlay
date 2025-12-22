
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gurumdds-3, ament-cmake-ros, ament-lint-auto, ament-lint-common, gurumdds-cmake-module, rcutils, rmw, rmw-dds-common, rosidl-cmake, rosidl-generator-dds-idl, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-jazzy-rmw-gurumdds-cpp";
  version = "5.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_gurumdds-release/archive/release/jazzy/rmw_gurumdds_cpp/5.0.0-2.tar.gz";
    name = "5.0.0-2.tar.gz";
    sha256 = "72280daa3db068e1249eae1fba4e38ed26f639608880e0b8a2fb6276eef40ed6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-cmake rosidl-generator-dds-idl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_gurumdds-3.2 gurumdds-cmake-module rcutils rmw rmw-dds-common rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-cmake ];

  meta = {
    description = "Implement the ROS middleware interface using GurumNetworks GurumDDS static code generation in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
