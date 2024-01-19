
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, file, pkg-config }:
buildRosPackage {
  pname = "ros-iron-libcurl-vendor";
  version = "3.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/iron/libcurl_vendor/3.2.2-3.tar.gz";
    name = "3.2.2-3.tar.gz";
    sha256 = "23a5f431960b790ad5d51197e40fb3494295c8489d8cbf64a941cbd5b7be1eb7";
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
