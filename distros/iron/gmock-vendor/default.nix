
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest-vendor }:
buildRosPackage {
  pname = "ros-iron-gmock-vendor";
  version = "1.10.9005-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/iron/gmock_vendor/1.10.9005-2.tar.gz";
    name = "1.10.9005-2.tar.gz";
    sha256 = "37d68ab68a4865962861314e80bfc27bf1dd7b665eac9733dc7663ff5a6a53b0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtest-vendor ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The package provides GoogleMock.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
