
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-dashing-tinyxml2-vendor";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml2_vendor-release/archive/release/dashing/tinyxml2_vendor/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "8a562096dafae9ea3551eb8340b5248db5130ffdfe8fd458f80bfbeb8ec04e82";
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
