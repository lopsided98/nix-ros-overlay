
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, curl, file, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-libcurl-vendor";
  version = "3.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/jazzy/libcurl_vendor/3.4.3-1.tar.gz";
    name = "3.4.3-1.tar.gz";
    sha256 = "45541f14c0f47e3d463162e99b41d3ebb693d5c9cad02bb6f7e62d0b9bf0fbc1";
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
