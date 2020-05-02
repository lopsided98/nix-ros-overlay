
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hdf5-map-io, label-manager, mesh-msgs }:
buildRosPackage {
  pname = "ros-melodic-mesh-msgs-hdf5";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/mesh_msgs_hdf5/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "d405f421ec7bff3d7b22d58e86d613174332b3fadbffff4f04b402413fbf6dc6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hdf5-map-io label-manager mesh-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Read and write mesh_msgs to and from hdf5'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
