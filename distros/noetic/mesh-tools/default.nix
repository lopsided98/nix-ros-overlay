
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hdf5-map-io, label-manager, mesh-msgs, mesh-msgs-conversions, mesh-msgs-transform, rviz-map-plugin, rviz-mesh-plugin }:
buildRosPackage {
  pname = "ros-noetic-mesh-tools";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/noetic/mesh_tools/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "37ba580f490e7069f419e93f5bed2984ae76e183f33d22d3054fef962507c21c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hdf5-map-io label-manager mesh-msgs mesh-msgs-conversions mesh-msgs-transform rviz-map-plugin rviz-mesh-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_tools package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
