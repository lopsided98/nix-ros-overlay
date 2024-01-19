
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, zlib }:
buildRosPackage {
  pname = "ros-noetic-cnpy";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/PeterMitrano/cnpy-release/archive/release/noetic/cnpy/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "87f066147c2ba2f9c142065072514b6cecef45bf5aa506dcc85fbc0b07c5eee3";
  };

  buildType = "catkin";
  buildInputs = [ catkin zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''library to read/write .npy and .npz files in C/C++'';
    license = with lib.licenses; [ mit ];
  };
}
