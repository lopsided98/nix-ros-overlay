
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hdf5-map-io, label-manager, mesh-msgs }:
buildRosPackage {
  pname = "ros-noetic-mesh-msgs-hdf5";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/noetic/mesh_msgs_hdf5/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "88beecc46310337e26e19043aa216d8420ed7c32e609f2199ee6871fcfaa4018";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hdf5-map-io label-manager mesh-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Read and write mesh_msgs to and from hdf5'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
