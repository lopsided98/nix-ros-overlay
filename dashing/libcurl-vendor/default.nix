
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pkg-config, curl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-libcurl-vendor";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/dashing/libcurl_vendor/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "1986856afbec5cb344157e0b0459358e2a216202c3e73d809bc029a38bb5657b";
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
