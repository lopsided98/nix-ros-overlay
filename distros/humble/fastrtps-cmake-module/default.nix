
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-fastrtps-cmake-module";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/humble/fastrtps_cmake_module/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "7b712b3311ca82170b2ddc7d4321123987846ae42bf0ba1bc59fd111b99b5d13";
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
