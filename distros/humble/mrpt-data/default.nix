
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-mrpt-data";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_data/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "3d4ed8c228721873b1da83d051fa93c02bdae91959b6cf44ac91e253b9491ae4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MRPT shared data files: test datasets and example config files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
