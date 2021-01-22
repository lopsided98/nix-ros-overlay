
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, osrf-testing-tools-cpp, performance-test-fixture, rmw, rosidl-cmake, rosidl-parser, rosidl-runtime-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-foxy-rosidl-typesupport-fastrtps-c";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/foxy/rosidl_typesupport_fastrtps_c/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "41538ec9ae5b269e30fc5e9a50eb24f1ca51d65d40f4c87ae3eda4c042723d2e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-ros fastcdr fastrtps fastrtps-cmake-module rmw rosidl-cmake rosidl-parser rosidl-runtime-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-ros fastcdr fastrtps fastrtps-cmake-module rosidl-cmake rosidl-runtime-c rosidl-typesupport-fastrtps-cpp ];

  meta = {
    description = ''Generate the C interfaces for eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
