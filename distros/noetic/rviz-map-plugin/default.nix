
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hdf5-map-io, mesh-msgs, ocl-icd, opencl-clhpp, qt5, roscpp, rviz, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rviz-map-plugin";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/noetic/rviz_map_plugin/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "cdc2aa61d95b5f7246a8d6fc5fe886c6e9889b43a41efb144c6bcc98ec78942c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hdf5-map-io mesh-msgs ocl-icd opencl-clhpp qt5.qtbase roscpp rviz std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RViz display types and tools for the mesh_msgs package.";
    license = with lib.licenses; [ bsd3 ];
  };
}
