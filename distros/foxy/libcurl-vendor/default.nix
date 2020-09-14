
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, pkg-config }:
buildRosPackage {
  pname = "ros-foxy-libcurl-vendor";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/foxy/libcurl_vendor/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "b8252b67e68cd345ffa90ba41140ed1a31f5722028bd3cb8c1feea9208f0b0c6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ curl pkg-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
