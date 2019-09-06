
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, tinyxml }:
buildRosPackage {
  pname = "ros-crystal-tinyxml-vendor";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/tinyxml_vendor-release/archive/release/crystal/tinyxml_vendor/0.5.0-0.tar.gz;
    sha256 = "ad189cbcce4e0a7187d9dc7bc1fea531fb2cfa4e68ffb506556ddfcd65d79c08";
  };

  buildType = "cmake";
  buildInputs = [ tinyxml ];
  propagatedBuildInputs = [ tinyxml ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CMake shim over the tinxml library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
