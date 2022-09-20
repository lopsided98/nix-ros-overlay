
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, osrf-testing-tools-cpp, performance-test-fixture, rmw, rosidl-cli, rosidl-cmake, rosidl-parser, rosidl-runtime-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-galactic-rosidl-typesupport-fastrtps-c";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/galactic/rosidl_typesupport_fastrtps_c/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "0dc177dcab0776798d7650f28c4a6325b702d2ab372aa44934af27da131053dc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-ros ament-index-python fastcdr fastrtps fastrtps-cmake-module rmw rosidl-cli rosidl-cmake rosidl-parser rosidl-runtime-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-ros fastcdr fastrtps fastrtps-cmake-module rosidl-cmake rosidl-parser rosidl-runtime-c rosidl-typesupport-fastrtps-cpp ];

  meta = {
    description = ''Generate the C interfaces for eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
