
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, file, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-libcurl-vendor";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/rolling/libcurl_vendor/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "6475c7c311b7957bba8166ab3cd4dac8a150c39fe7cbf145ac4472ce7834af40";
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
