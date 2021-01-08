
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, zlib }:
buildRosPackage {
  pname = "ros-noetic-cnpy";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/PeterMitrano/cnpy-release/archive/release/noetic/cnpy/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "98cbf4fcf6056a7b6670e9417799d33e0405399a887df22f164aef7e956a3e28";
  };

  buildType = "cmake";
  buildInputs = [ cmake zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''library to read/write .npy and .npz files in C/C++'';
    license = with lib.licenses; [ mit ];
  };
}
