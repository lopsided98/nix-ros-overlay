
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-yaml-cpp-vendor";
  version = "7.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/galactic/yaml_cpp_vendor/7.1.1-1.tar.gz";
    name = "7.1.1-1.tar.gz";
    sha256 = "33afe34c829a9a54ad20728236ca09e692490b2935880f95d4509833fd376545";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
