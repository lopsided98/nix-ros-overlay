
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, fastcdr, fastrtps-cmake-module, osrf-testing-tools-cpp, performance-test-fixture, python3, rcutils, rmw, rosidl-cli, rosidl-generator-c, rosidl-generator-cpp, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-rolling-rosidl-typesupport-fastrtps-cpp";
  version = "3.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/rolling/rosidl_typesupport_fastrtps_cpp/3.7.0-1.tar.gz";
    name = "3.7.0-1.tar.gz";
    sha256 = "7604c52c4f79f4ef558c6b0e4f5ef6eabce218a148cf99dff63dcca7978ccc7d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture rcutils ];
  propagatedBuildInputs = [ ament-cmake-ros ament-index-python fastcdr fastrtps-cmake-module python3 rmw rosidl-cli rosidl-generator-c rosidl-generator-cpp rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros fastrtps-cmake-module python3 rosidl-generator-c rosidl-generator-cpp ];

  meta = {
    description = "Generate the C++ interfaces for eProsima FastRTPS.";
    license = with lib.licenses; [ asl20 ];
  };
}
