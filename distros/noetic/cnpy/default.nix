
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, zlib }:
buildRosPackage {
  pname = "ros-noetic-cnpy";
  version = "0.0.7-r3";

  src = fetchurl {
    url = "https://github.com/PeterMitrano/cnpy-release/archive/release/noetic/cnpy/0.0.7-3.tar.gz";
    name = "0.0.7-3.tar.gz";
    sha256 = "782dc178efb2fd281be33e1d8205e268597dc72086649a1b5695948019f36b20";
  };

  buildType = "cmake";
  buildInputs = [ cmake zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''library to read/write .npy and .npz files in C/C++'';
    license = with lib.licenses; [ mit ];
  };
}
