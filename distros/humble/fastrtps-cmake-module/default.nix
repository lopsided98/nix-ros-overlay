
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-fastrtps-cmake-module";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/humble/fastrtps_cmake_module/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "2b2296e4c4762ff6e9e42241affe7489e7893fde75d4277591b28bc47153fbd0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
