
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml }:
buildRosPackage {
  pname = "ros-rolling-tinyxml-vendor";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml_vendor-release/archive/release/rolling/tinyxml_vendor/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "d5ede0887a3eec472759424a80b91e944ba7098e3800199ed5deb1564528edbf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tinyxml ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake shim over the tinxml library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
