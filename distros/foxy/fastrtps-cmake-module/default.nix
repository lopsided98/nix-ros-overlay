
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-fastrtps-cmake-module";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/foxy/fastrtps_cmake_module/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "3e86c20176a31390dfdd24ebf0edaf5fec2cbab6b7ed81bd2e11e14579c3f883";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
