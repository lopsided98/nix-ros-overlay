
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-foxy-gtest-vendor";
  version = "1.8.9001-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/googletest-release/archive/release/foxy/gtest_vendor/1.8.9001-1.tar.gz";
    name = "1.8.9001-1.tar.gz";
    sha256 = "44cb12b30c00c7b3d6001469d62ecaf1d27dfa271f867de849f35e9e6f23ba83";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];

  meta = {
    description = ''The package provides GoogleTest.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
