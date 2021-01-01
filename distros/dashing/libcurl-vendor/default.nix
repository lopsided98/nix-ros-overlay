
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, pkg-config }:
buildRosPackage {
  pname = "ros-dashing-libcurl-vendor";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/dashing/libcurl_vendor/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "ea071d589ca9f418d7c58c2df176c7a549cb9f51b0452b249efbd82610835520";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ curl pkg-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
