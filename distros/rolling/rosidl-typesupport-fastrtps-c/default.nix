
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, fastcdr, osrf-testing-tools-cpp, performance-test-fixture, python3, rcutils, rmw, rosidl-cli, rosidl-generator-c, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-rolling-rosidl-typesupport-fastrtps-c";
  version = "3.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/rolling/rosidl_typesupport_fastrtps_c/3.9.3-1.tar.gz";
    name = "3.9.3-1.tar.gz";
    sha256 = "e7f78d54c284bba0e62042d76854083a7867f539a04e91813434fbecaaba59c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture rcutils ];
  propagatedBuildInputs = [ ament-cmake-ros-core ament-index-python fastcdr python3 rmw rosidl-cli rosidl-generator-c rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-fastrtps-cpp rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros-core python3 rosidl-generator-c ];

  meta = {
    description = "Generate the C interfaces for eProsima FastRTPS.";
    license = with lib.licenses; [ asl20 ];
  };
}
