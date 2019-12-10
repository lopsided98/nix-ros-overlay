
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-eloquent-gmock-vendor";
  version = "1.8.9000-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/eloquent/gmock_vendor/1.8.9000-1.tar.gz";
    name = "1.8.9000-1.tar.gz";
    sha256 = "a9b45aa951486d246bc6081f3d48d20cf8fa468e081ecc72afb4db824004117a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtest-vendor ];

  meta = {
    description = ''The package provides GoogleMock.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
