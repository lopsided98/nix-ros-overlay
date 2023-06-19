
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-iron-fastrtps-cmake-module";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/iron/fastrtps_cmake_module/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "6173e90b93a8cc44040fa1fca82d09efe2f3645819b28fac6d0da335c0aa89f9";
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
