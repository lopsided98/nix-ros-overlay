
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-yaml-cpp-vendor";
  version = "6.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/dashing/yaml_cpp_vendor/6.0.1-1.tar.gz";
    name = "6.0.1-1.tar.gz";
    sha256 = "8677db72dad5ef1a587bb1bc260e72cecd4d721cb68d5ed3eb480a083f223d1a";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
