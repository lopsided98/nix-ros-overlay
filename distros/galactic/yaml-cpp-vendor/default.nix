
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-yaml-cpp-vendor";
  version = "7.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/galactic/yaml_cpp_vendor/7.1.0-2.tar.gz";
    name = "7.1.0-2.tar.gz";
    sha256 = "22e96466cb3d9214281e52d89e5a750d1897eb2186ef95a5bb6d9ca6a24ce7d4";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
