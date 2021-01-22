
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, zlib }:
buildRosPackage {
  pname = "ros-noetic-cnpy";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/PeterMitrano/cnpy-release/archive/release/noetic/cnpy/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "4976d95c49104d5005fde64175107a526dbe77cea3953e5aebf7caf2d855fb3a";
  };

  buildType = "cmake";
  buildInputs = [ cmake zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''library to read/write .npy and .npz files in C/C++'';
    license = with lib.licenses; [ mit ];
  };
}
