
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, curl, file, pkg-config }:
buildRosPackage {
  pname = "ros-kilted-libcurl-vendor";
  version = "3.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/kilted/libcurl_vendor/3.7.1-1.tar.gz";
    name = "3.7.1-1.tar.gz";
    sha256 = "98a8bd4c0fde60470476bfe60473d60b13821365925f1d360779eeec3b3f1b6b";
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
