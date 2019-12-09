
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pkg-config, curl, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-libcurl-vendor";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/eloquent/libcurl_vendor/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "e08a18ca05bbffebb2a16b4d6bf876720784456a6b17a054e6964fe078fe95af";
  };

  buildType = "ament_cmake";
  buildInputs = [ curl ];
  propagatedBuildInputs = [ pkg-config curl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
