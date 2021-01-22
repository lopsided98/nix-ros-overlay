
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-dashing-tinydir-vendor";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinydir_vendor-release/archive/release/dashing/tinydir_vendor/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "a071b1faa7b7c421b701e067ec6209cbfe17b2f8bf2be2ed9f2c6baefe7b70df";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CMake shim over tinydir: https://github.com/cxong/tinydir/'';
    license = with lib.licenses; [ asl20 ];
  };
}
