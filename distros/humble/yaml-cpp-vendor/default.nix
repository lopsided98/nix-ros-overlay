
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libyamlcpp }:
buildRosPackage {
  pname = "ros-humble-yaml-cpp-vendor";
  version = "8.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yaml_cpp_vendor-release/archive/release/humble/yaml_cpp_vendor/8.0.1-2.tar.gz";
    name = "8.0.1-2.tar.gz";
    sha256 = "95c715d7a2445fd1a582367fc1678a7ec40a8ab8931288849800991246b2bd40";
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
