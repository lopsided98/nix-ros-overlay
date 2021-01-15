
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, pcre, poco, zlib }:
buildRosPackage {
  pname = "ros-dashing-poco-vendor";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/poco_vendor-release/archive/release/dashing/poco_vendor/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "819a7815ce83c61e41ec8c0966c62e3e63733c2d0d8f59a705e26682697d0ec2";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake pcre poco zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CMake shim over the poco library.'';
    license = with lib.licenses; [ asl20 boost ];
  };
}
