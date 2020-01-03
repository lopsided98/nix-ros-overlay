
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-crystal-tinyxml2-vendor";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml2_vendor-release/archive/release/crystal/tinyxml2_vendor/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "68aa18c4cdfc73098b30c5b59de57a85458e88e38f54b790442cf6ab05861514";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Wrapper around tinyxml2, providing nothing but a dependency on tinyxml2, on some systems.
    On others, it provides a fixed CMake module or even an ExternalProject build of tinyxml2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
