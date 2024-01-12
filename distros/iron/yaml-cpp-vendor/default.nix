
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, yaml-cpp }:
buildRosPackage {
  pname = "ros-iron-yaml-cpp-vendor";
  version = "8.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/iron/yaml_cpp_vendor/8.1.2-3.tar.gz";
    name = "8.1.2-3.tar.gz";
    sha256 = "5581e6bbaadbeb1bf3e32abf230682128fa18361b1a68d79dae39c72cadf8931";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
