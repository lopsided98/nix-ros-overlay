
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common, rmw-fastrtps-shared-cpp, rosidl-runtime-c, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-humble-rmw-fastrtps-dynamic-cpp";
  version = "6.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/humble/rmw_fastrtps_dynamic_cpp/6.2.4-1.tar.gz";
    name = "6.2.4-1.tar.gz";
    sha256 = "ff1ee2a085cab4d695d6ca0a8259340f4c09bc12c471e7d7f82510867f2cd8b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp test-msgs ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rcpputils rcutils rmw rmw-dds-common rmw-fastrtps-shared-cpp rosidl-runtime-c rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros fastrtps-cmake-module ];

  meta = {
    description = ''Implement the ROS middleware interface using introspection type support.'';
    license = with lib.licenses; [ asl20 ];
  };
}
