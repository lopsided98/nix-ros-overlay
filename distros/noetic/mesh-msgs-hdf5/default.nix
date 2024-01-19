
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hdf5-map-io, label-manager, mesh-msgs }:
buildRosPackage {
  pname = "ros-noetic-mesh-msgs-hdf5";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/noetic/mesh_msgs_hdf5/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "7279fa88fdb99d73322b17b85ba620afa1957bc3ff85ffda44fbef68b30d7ca3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hdf5-map-io label-manager mesh-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Read mesh_msgs from hdf5'';
    license = with lib.licenses; [ bsd3 ];
  };
}
