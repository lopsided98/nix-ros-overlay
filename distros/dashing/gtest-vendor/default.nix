
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-dashing-gtest-vendor";
  version = "1.8.9000-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/dashing/gtest_vendor/1.8.9000-1.tar.gz";
    name = "1.8.9000-1.tar.gz";
    sha256 = "ceee02f257d01bd0c84958d703c5b3ff8c8d0417450d0547ba79e1405a26e70b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];

  meta = {
    description = ''The package provides GoogleTest.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
