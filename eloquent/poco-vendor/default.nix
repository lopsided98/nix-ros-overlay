
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, pcre, poco, zlib }:
buildRosPackage {
  pname = "ros-eloquent-poco-vendor";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/poco_vendor-release/archive/release/eloquent/poco_vendor/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "2f6821e6d7d7c9a429217ddfb2a0b71b87efbf7d4adea3e7f17d11fbed71a1e3";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake pcre poco zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CMake shim over the poco library.'';
    license = with lib.licenses; [ asl20 boost ];
  };
}
