
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-yaml-cpp-vendor";
  version = "7.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/foxy/yaml_cpp_vendor/7.0.3-1.tar.gz";
    name = "7.0.3-1.tar.gz";
    sha256 = "dd8ad6666daa137958a46d5a679eb1d58c918ce9cc3c2c98d00c9f162803f9a9";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
