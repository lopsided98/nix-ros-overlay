
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, osrf-testing-tools-cpp, performance-test-fixture, rmw, rosidl-cli, rosidl-cmake, rosidl-parser, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-galactic-rosidl-typesupport-fastrtps-cpp";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/galactic/rosidl_typesupport_fastrtps_cpp/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "8b0f2187f7d8a17256fef1874d78539a8f42b09b5b9b05ce485ffcecc7a949c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-ros ament-index-python fastcdr fastrtps fastrtps-cmake-module rmw rosidl-cli rosidl-cmake rosidl-parser rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros fastcdr fastrtps fastrtps-cmake-module rosidl-cmake rosidl-parser rosidl-runtime-c rosidl-runtime-cpp ];

  meta = {
    description = ''Generate the C++ interfaces for eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
