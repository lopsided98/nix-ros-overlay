
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, pkg-config }:
buildRosPackage {
  pname = "ros-foxy-libcurl-vendor";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/foxy/libcurl_vendor/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "595f3dbc666c1c22d3bf5e5765528a53118fbed1eccb529f7ae901c7dc8ffc6e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ curl pkg-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
