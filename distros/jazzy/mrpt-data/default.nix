
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-data";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_data/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "603e1297baa9e35db14d0c4f6af5bfaca04b0f87306e4c4cdbb9df81e52fa39f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MRPT shared data files: test datasets and example config files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
