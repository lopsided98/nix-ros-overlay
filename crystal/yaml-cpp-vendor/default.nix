
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-yaml-cpp-vendor";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/crystal/yaml_cpp_vendor/5.0.0-0.tar.gz;
    sha256 = "40ebab2a3298b5c6f44d69b287d305097cc267912e38722e181f1a903e1d0e63";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
