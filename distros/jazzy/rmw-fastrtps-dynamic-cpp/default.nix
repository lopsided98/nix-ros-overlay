
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common, rmw-fastrtps-shared-cpp, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rmw-fastrtps-dynamic-cpp";
  version = "8.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/jazzy/rmw_fastrtps_dynamic_cpp/8.4.2-1.tar.gz";
    name = "8.4.2-1.tar.gz";
    sha256 = "008885d0a04363133d88779cffad0a6cd87caae6a3625599ef3ba538233ed3ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp test-msgs ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rcpputils rcutils rmw rmw-dds-common rmw-fastrtps-shared-cpp rosidl-runtime-c rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros fastrtps-cmake-module ];

  meta = {
    description = "Implement the ROS middleware interface using introspection type support.";
    license = with lib.licenses; [ asl20 ];
  };
}
