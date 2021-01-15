
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, tinyxml }:
buildRosPackage {
  pname = "ros-dashing-tinyxml-vendor";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml_vendor-release/archive/release/dashing/tinyxml_vendor/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "11046b54af6b6cc0fa2a68989bc8577a73bed313ff501451e8fa98f03f56b854";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ tinyxml ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CMake shim over the tinxml library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
