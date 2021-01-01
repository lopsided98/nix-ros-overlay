
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-imagezero";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/imagezero_transport-release/archive/release/kinetic/imagezero/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "884d9217186e536ce0f9b5026b66b7f26d0908c849b2a65f61a70eff239da1d0";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ImageZero is a fast lossless image compression algorithm for RGB color photos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
