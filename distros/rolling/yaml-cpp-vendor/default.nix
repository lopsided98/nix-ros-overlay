
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libyamlcpp }:
buildRosPackage {
  pname = "ros-rolling-yaml-cpp-vendor";
  version = "8.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/rolling/yaml_cpp_vendor/8.1.1-1.tar.gz";
    name = "8.1.1-1.tar.gz";
    sha256 = "0ba2a5db2f0068505303360ba14cea5c4a537e303679ec97aa4565b7a05a39a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ libyamlcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
