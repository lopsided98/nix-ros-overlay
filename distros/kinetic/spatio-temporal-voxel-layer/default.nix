
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, laser-geometry, message-filters, message-generation, openexr, openvdb, pcl-conversions, pcl-ros, pluginlib, roscpp, sensor-msgs, std-msgs, tbb, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-spatio-temporal-voxel-layer";
  version = "1.2.1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/kinetic/spatio_temporal_voxel_layer/1.2.1-0.tar.gz";
    name = "1.2.1-0.tar.gz";
    sha256 = "01447433873335a28db5ee7146abec292d04aaa42d4bfe6a174a254e8ae48b18";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure geometry-msgs laser-geometry message-filters openexr openvdb pcl-conversions pcl-ros pluginlib roscpp sensor-msgs std-msgs tbb tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The spatio-temporal 3D obstacle costmap package'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
