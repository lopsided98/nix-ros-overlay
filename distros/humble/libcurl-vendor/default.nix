
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, file, pkg-config }:
buildRosPackage {
  pname = "ros-humble-libcurl-vendor";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/humble/libcurl_vendor/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "b11a6bd16588b5a04624fa27e7ab49c74f3bb50d57b08d7ca0ff8610a2d3651f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake file ];
  propagatedBuildInputs = [ curl pkg-config ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
