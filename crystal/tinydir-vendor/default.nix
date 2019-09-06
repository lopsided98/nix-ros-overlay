
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-crystal-tinydir-vendor";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/tinydir_vendor-release/archive/release/crystal/tinydir_vendor/1.0.1-0.tar.gz;
    sha256 = "993a5b8000c90a3284ca05971c79f13f7e71fa2b92e02f865d8d730b9ceaafd3";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CMake shim over tinydir: https://github.com/cxong/tinydir/'';
    license = with lib.licenses; [ asl20 ];
  };
}
