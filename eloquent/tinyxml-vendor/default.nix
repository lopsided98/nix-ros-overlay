
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, tinyxml }:
buildRosPackage {
  pname = "ros-eloquent-tinyxml-vendor";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml_vendor-release/archive/release/eloquent/tinyxml_vendor/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "06d8250d378df62cb6c65eb80b17c8312baea148ec0767e587cfb0bc17da1730";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ tinyxml ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CMake shim over the tinxml library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
