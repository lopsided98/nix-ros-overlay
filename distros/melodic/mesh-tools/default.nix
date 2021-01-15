
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hdf5-map-io, label-manager, mesh-msgs, mesh-msgs-conversions, mesh-msgs-transform, rviz-map-plugin, rviz-mesh-plugin }:
buildRosPackage {
  pname = "ros-melodic-mesh-tools";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/mesh_tools/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c88c21c4baedd66a1ae639de307c6ba45a2f4d4d118cae74a23fbed9687d4719";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hdf5-map-io label-manager mesh-msgs mesh-msgs-conversions mesh-msgs-transform rviz-map-plugin rviz-mesh-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_tools package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
