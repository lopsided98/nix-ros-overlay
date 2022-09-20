
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-yaml-cpp-vendor";
  version = "7.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/foxy/yaml_cpp_vendor/7.0.2-1.tar.gz";
    name = "7.0.2-1.tar.gz";
    sha256 = "0f60d587d418978fc9e2dde4021c8d2ce7e1cce6fb7f302a249fada8c0782e34";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
