
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, zlib }:
buildRosPackage {
  pname = "ros-noetic-cnpy";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/PeterMitrano/cnpy-release/archive/release/noetic/cnpy/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "372278fad42f9429c7bbc5beec100eddbc79aa190d7cf92718ab9e38ab6dcb46";
  };

  buildType = "cmake";
  buildInputs = [ cmake zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''library to read/write .npy and .npz files in C/C++'';
    license = with lib.licenses; [ mit ];
  };
}
