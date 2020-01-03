
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-eloquent-fastrtps-cmake-module";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/eloquent/fastrtps_cmake_module/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "e16b92f0056a6f0879fb62aced5165e70454cf8504766de153e799e42705bbd6";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
