
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tbb, geometry-msgs, pluginlib, openexr, sensor-msgs, dynamic-reconfigure, tf2-geometry-msgs, tf2-ros, pcl-ros, message-filters, std-msgs, catkin, costmap-2d, roscpp, openvdb, message-generation, laser-geometry, pcl-conversions, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-spatio-temporal-voxel-layer";
  version = "1.3.5-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/melodic/spatio_temporal_voxel_layer/1.3.5-2.tar.gz";
    name = "1.3.5-2.tar.gz";
    sha256 = "c4f1a275ab85e04a11a2a5a3a300ec41375da9877b087036ddc5f50b381546fd";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros tbb message-filters geometry-msgs sensor-msgs dynamic-reconfigure pluginlib std-msgs laser-geometry tf2-geometry-msgs costmap-2d openexr pcl-conversions visualization-msgs roscpp openvdb message-generation tf2-ros ];
  propagatedBuildInputs = [ pcl-ros tbb sensor-msgs geometry-msgs message-filters dynamic-reconfigure pluginlib std-msgs laser-geometry tf2-geometry-msgs costmap-2d openexr pcl-conversions visualization-msgs roscpp openvdb tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The spatio-temporal 3D obstacle costmap package'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
