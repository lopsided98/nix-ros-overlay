
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-mrpt-data";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_data/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "2eca2a613cdc4681c4b3f3bbc5c8f33c96613162cd88d0b7bb8f322ea4f3f174";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MRPT shared data files: test datasets and example config files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
