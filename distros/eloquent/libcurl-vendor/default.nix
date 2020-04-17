
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, pkg-config }:
buildRosPackage {
  pname = "ros-eloquent-libcurl-vendor";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/eloquent/libcurl_vendor/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "c4ffe5bbf60113832ab9e97fd11a770aa51d8e10c85a4dec4f4316f67b23272f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ curl pkg-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
