
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-dashing-gmock-vendor";
  version = "1.8.9000-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/dashing/gmock_vendor/1.8.9000-1.tar.gz";
    name = "1.8.9000-1.tar.gz";
    sha256 = "e359044680dfb66e008d02a5c16115245fff021a896db7de1e31c69b5c239761";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtest-vendor ];

  meta = {
    description = ''The package provides GoogleMock.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
