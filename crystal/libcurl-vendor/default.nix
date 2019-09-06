
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, curl, ament-cmake, pkg-config }:
buildRosPackage {
  pname = "ros-crystal-libcurl-vendor";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/crystal/libcurl_vendor/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "904b586704ed7f517291b7e7a863772b6cc3c2819fd2a2f1d9fce1f2d1b26708";
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
