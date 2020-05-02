
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hdf5-map-io, label-manager, mesh-msgs, mesh-msgs-transform, rviz-map-plugin, rviz-mesh-plugin }:
buildRosPackage {
  pname = "ros-melodic-mesh-tools";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/mesh_tools/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "ab25a7aa81386ca73f2978593edcaa93a85ca3108815c4ac5fd68d58c877dfa1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hdf5-map-io label-manager mesh-msgs mesh-msgs-transform rviz-map-plugin rviz-mesh-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mesh_tools package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
