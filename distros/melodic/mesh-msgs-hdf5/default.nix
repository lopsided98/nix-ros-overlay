
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hdf5-map-io, label-manager, mesh-msgs }:
buildRosPackage {
  pname = "ros-melodic-mesh-msgs-hdf5";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/mesh_msgs_hdf5/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "b1cef484da7c668517763d575498a79ac83ab91031385970f8c036c91327a12c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hdf5-map-io label-manager mesh-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Read and write mesh_msgs to and from hdf5'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
