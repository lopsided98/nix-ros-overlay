
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, curl, file, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-libcurl-vendor";
  version = "3.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/rolling/libcurl_vendor/3.4.0-2.tar.gz";
    name = "3.4.0-2.tar.gz";
    sha256 = "b59cec4491169d4716fedbca6df54cc92454711980ccffd71d14eb158fb8885b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package file ];
  propagatedBuildInputs = [ curl pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package pkg-config ];

  meta = {
    description = ''Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
