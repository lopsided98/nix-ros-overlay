
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-eloquent-tinyxml2-vendor";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml2_vendor-release/archive/release/eloquent/tinyxml2_vendor/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "4b7c500d23ca2f2608375221945086d87452491c3c1f2808aefeb009bbfeb891";
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
