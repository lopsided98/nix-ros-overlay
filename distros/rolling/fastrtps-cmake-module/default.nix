
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-fastrtps-cmake-module";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/rolling/fastrtps_cmake_module/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "413181feb19d47f873646e2ec8be85ad6319abac36f5c6e0fa0b3f01ac908a96";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provide CMake module to find eProsima FastRTPS.";
    license = with lib.licenses; [ asl20 ];
  };
}
