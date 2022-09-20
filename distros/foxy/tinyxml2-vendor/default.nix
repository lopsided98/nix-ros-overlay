
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-foxy-tinyxml2-vendor";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml2_vendor-release/archive/release/foxy/tinyxml2_vendor/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "56d1a7c6d3e3499724b9789195f307831ff7bd5ad0a67584169492997ee40659";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around tinyxml2, providing nothing but a dependency on tinyxml2, on some systems.
    On others, it provides a fixed CMake module or even an ExternalProject build of tinyxml2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
