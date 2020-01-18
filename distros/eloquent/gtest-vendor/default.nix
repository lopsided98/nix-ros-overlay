
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-eloquent-gtest-vendor";
  version = "1.8.9000-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/eloquent/gtest_vendor/1.8.9000-1.tar.gz";
    name = "1.8.9000-1.tar.gz";
    sha256 = "48226026f37ec94d01f3ec006756c112b3104ffa95f2f53956d7023c9dba1bce";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];

  meta = {
    description = ''The package provides GoogleTest.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
