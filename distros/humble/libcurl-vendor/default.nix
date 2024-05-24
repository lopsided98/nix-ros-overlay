
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, file, pkg-config }:
buildRosPackage {
  pname = "ros-humble-libcurl-vendor";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/humble/libcurl_vendor/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "e9d1100eb201ed07e31c2549eded35fe16a49c4e862107046a22fed8f69a5c29";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake file ];
  propagatedBuildInputs = [ curl pkg-config ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
