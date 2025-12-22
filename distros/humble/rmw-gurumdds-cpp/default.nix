
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gurumdds-3, ament-cmake-ros, ament-lint-auto, ament-lint-common, gurumdds-cmake-module, rcutils, rmw, rmw-dds-common, rosidl-cmake, rosidl-generator-dds-idl, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-humble-rmw-gurumdds-cpp";
  version = "3.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_gurumdds-release/archive/release/humble/rmw_gurumdds_cpp/3.4.2-1.tar.gz";
    name = "3.4.2-1.tar.gz";
    sha256 = "d30a157d0ba9105f6c95944cc1a347bce9300d3ee2d56ef8fb0a5f7d7fdeaabe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-cmake rosidl-generator-dds-idl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_gurumdds-3.0 gurumdds-cmake-module rcutils rmw rmw-dds-common rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-cmake ];

  meta = {
    description = "Implement the ROS middleware interface using GurumNetworks GurumDDS static code generation in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
