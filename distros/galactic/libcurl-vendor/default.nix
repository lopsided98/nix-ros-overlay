
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, pkg-config }:
buildRosPackage {
  pname = "ros-galactic-libcurl-vendor";
  version = "2.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/galactic/libcurl_vendor/2.5.0-2.tar.gz";
    name = "2.5.0-2.tar.gz";
    sha256 = "ce11910cee9a8d27e616e51b3d31e4662fa443fbaf61017393de0093b8f742db";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ curl pkg-config ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
