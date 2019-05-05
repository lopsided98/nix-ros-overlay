
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-imagezero";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/imagezero_transport-release/archive/release/lunar/imagezero/0.2.4-0.tar.gz;
    sha256 = "5d036e27f4d33c752ac4015e0bf5da65acb1b7a74f95f79f0e2deec8d3083ec5";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ImageZero is a fast lossless image compression algorithm for RGB color photos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
