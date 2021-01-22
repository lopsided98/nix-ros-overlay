
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, lvr2 }:
buildRosPackage {
  pname = "ros-noetic-hdf5-map-io";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/noetic/hdf5_map_io/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "690c310577b2abed1587f3a063ba0419bc77797f19721067524f16030cf3842d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost lvr2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hdf5_map_io package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
