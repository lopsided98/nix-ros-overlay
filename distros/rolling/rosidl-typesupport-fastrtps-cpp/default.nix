
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, fastcdr, osrf-testing-tools-cpp, performance-test-fixture, python3, rcutils, rmw, rosidl-cli, rosidl-generator-c, rosidl-generator-cpp, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-rolling-rosidl-typesupport-fastrtps-cpp";
  version = "3.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/rolling/rosidl_typesupport_fastrtps_cpp/3.9.2-1.tar.gz";
    name = "3.9.2-1.tar.gz";
    sha256 = "1a45929ee02a926e75fe36cd6a9e31ba9e5d742b6c30ebd6ec17e9da935c0f37";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture rcutils ];
  propagatedBuildInputs = [ ament-cmake-ros-core ament-index-python fastcdr python3 rmw rosidl-cli rosidl-generator-c rosidl-generator-cpp rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros-core python3 rosidl-generator-c rosidl-generator-cpp ];

  meta = {
    description = "Generate the C++ interfaces for eProsima FastRTPS.";
    license = with lib.licenses; [ asl20 ];
  };
}
