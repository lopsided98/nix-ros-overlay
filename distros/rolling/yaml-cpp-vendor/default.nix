
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libyamlcpp }:
buildRosPackage {
  pname = "ros-rolling-yaml-cpp-vendor";
  version = "8.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/rolling/yaml_cpp_vendor/8.1.2-1.tar.gz";
    name = "8.1.2-1.tar.gz";
    sha256 = "45ae866317d42064469aa84ac5cd6100e148bf98152217b8beca0d2013c63e4d";
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
