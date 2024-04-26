
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, curl, file, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-libcurl-vendor";
  version = "3.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/rolling/libcurl_vendor/3.4.1-1.tar.gz";
    name = "3.4.1-1.tar.gz";
    sha256 = "33728b7b39f4005c141977f1f6834b3dbeccff7ea95dc46f3978ed29a948aecb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package file ];
  propagatedBuildInputs = [ curl pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package pkg-config ];

  meta = {
    description = "Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
