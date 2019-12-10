
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, pkg-config }:
buildRosPackage {
  pname = "ros-eloquent-libcurl-vendor";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/eloquent/libcurl_vendor/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "deec8c7d7ccd382f27d47adb8f22d17190ff41f179f20b7567a10b1ac4d016b3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ curl pkg-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
