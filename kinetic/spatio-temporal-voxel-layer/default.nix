
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, tbb, message-filters, geometry-msgs, sensor-msgs, dynamic-reconfigure, pluginlib, std-msgs, tf, catkin, laser-geometry, costmap-2d, openexr, pcl-conversions, visualization-msgs, roscpp, openvdb, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-spatio-temporal-voxel-layer";
  version = "1.2.1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/kinetic/spatio_temporal_voxel_layer/1.2.1-0.tar.gz";
    name = "1.2.1-0.tar.gz";
    sha256 = "01447433873335a28db5ee7146abec292d04aaa42d4bfe6a174a254e8ae48b18";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros tbb message-filters geometry-msgs sensor-msgs dynamic-reconfigure pluginlib std-msgs tf laser-geometry costmap-2d openexr pcl-conversions visualization-msgs roscpp openvdb message-generation ];
  propagatedBuildInputs = [ pcl-ros tbb sensor-msgs geometry-msgs message-filters dynamic-reconfigure pluginlib std-msgs tf laser-geometry costmap-2d openexr pcl-conversions visualization-msgs roscpp openvdb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The spatio-temporal 3D obstacle costmap package'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
