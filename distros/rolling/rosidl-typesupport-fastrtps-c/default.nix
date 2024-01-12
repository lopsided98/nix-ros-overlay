
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, fastcdr, fastrtps-cmake-module, osrf-testing-tools-cpp, performance-test-fixture, python3, rcutils, rmw, rosidl-cli, rosidl-generator-c, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-rolling-rosidl-typesupport-fastrtps-c";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/rolling/rosidl_typesupport_fastrtps_c/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "b279a2171b5e54903f836853a5c11b4036c609a0d029f9067b2a5c2c2ae326de";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture rcutils ];
  propagatedBuildInputs = [ ament-cmake-ros ament-index-python fastcdr fastrtps-cmake-module python3 rmw rosidl-cli rosidl-generator-c rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-fastrtps-cpp rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros fastrtps-cmake-module python3 rosidl-generator-c ];

  meta = {
    description = ''Generate the C interfaces for eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
