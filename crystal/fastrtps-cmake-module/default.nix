
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-crystal-fastrtps-cmake-module";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/crystal/fastrtps_cmake_module/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "f2a152b916a700341bd1fdb6c2730e06f094e773fac5b42b3706cabbaf79ae93";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
