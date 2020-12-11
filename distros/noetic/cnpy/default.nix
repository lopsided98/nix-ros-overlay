
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, zlib }:
buildRosPackage {
  pname = "ros-noetic-cnpy";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/PeterMitrano/cnpy-release/archive/release/noetic/cnpy/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "0b46891759f12fda45168f3e4492e26082b90c53fa46cdf0900b5168421515ea";
  };

  buildType = "cmake";
  buildInputs = [ cmake zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''library to read/write .npy and .npz files in C/C++'';
    license = with lib.licenses; [ mit ];
  };
}
