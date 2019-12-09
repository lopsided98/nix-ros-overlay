
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-yaml-cpp-vendor";
  version = "7.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/eloquent/yaml_cpp_vendor/7.0.0-1.tar.gz";
    name = "7.0.0-1.tar.gz";
    sha256 = "c718b0f34357e3d82eaac401ba422c4b435882e209979b2a3ed88ecdc2a7cbe2";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around yaml-cpp, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
