
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-eloquent-tinydir-vendor";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinydir_vendor-release/archive/release/eloquent/tinydir_vendor/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "b5a2502b2d1af4b272c7c3249a08c2fbface54b68d027d579ca54c05536aff7a";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CMake shim over tinydir: https://github.com/cxong/tinydir/'';
    license = with lib.licenses; [ asl20 ];
  };
}
