
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, fastcdr, osrf-testing-tools-cpp, performance-test-fixture, python3, rcutils, rmw, rosidl-cli, rosidl-generator-c, rosidl-generator-cpp, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-rolling-rosidl-typesupport-fastrtps-cpp";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/rolling/rosidl_typesupport_fastrtps_cpp/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "f40d70ce8bfd24925cea12537395ad05b25076c9050cc322bcc465a08ce432bd";
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
