
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, fastcdr, fastrtps-cmake-module, osrf-testing-tools-cpp, performance-test-fixture, python3, rmw, rosidl-cli, rosidl-cmake, rosidl-generator-cpp, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-humble-rosidl-typesupport-fastrtps-cpp";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/humble/rosidl_typesupport_fastrtps_cpp/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "9b807f5c8fd473e2e756bf48505da49557c9d46907340a2918101b16b08657bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-ros ament-index-python fastcdr fastrtps-cmake-module python3 rmw rosidl-cli rosidl-cmake rosidl-generator-cpp rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros fastrtps-cmake-module python3 rosidl-generator-cpp ];

  meta = {
    description = ''Generate the C++ interfaces for eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
