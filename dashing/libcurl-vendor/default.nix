
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, curl, ament-cmake, pkg-config }:
buildRosPackage {
  pname = "ros-dashing-libcurl-vendor";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/dashing/libcurl_vendor/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "4f7bb3b4b3e90736001cfd06bf7bb1c6f81d660422584e6e465f2c499a95e222";
  };

  buildType = "ament_cmake";
  buildInputs = [ curl ];
  propagatedBuildInputs = [ curl pkg-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
