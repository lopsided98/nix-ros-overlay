
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-imagezero";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/imagezero_transport-release/archive/release/noetic/imagezero/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "5f8470c0ef6bae0b59e3b0f72391ef9d19cf906ebf12bcf95629966c43fc93ec";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ImageZero is a fast lossless image compression algorithm for RGB color photos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
