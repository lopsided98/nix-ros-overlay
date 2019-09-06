
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, pcl-conversions, geometry-msgs, message-filters, tbb, message-generation, openvdb, tf2-geometry-msgs, catkin, tf2-ros, std-msgs, laser-geometry, visualization-msgs, roscpp, costmap-2d, openexr, pluginlib, sensor-msgs, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-spatio-temporal-voxel-layer";
  version = "1.3.5-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/melodic/spatio_temporal_voxel_layer/1.3.5-2.tar.gz";
    name = "1.3.5-2.tar.gz";
    sha256 = "c4f1a275ab85e04a11a2a5a3a300ec41375da9877b087036ddc5f50b381546fd";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d openexr pluginlib tf2-geometry-msgs sensor-msgs message-filters roscpp tf2-ros tbb message-generation visualization-msgs pcl-ros std-msgs dynamic-reconfigure laser-geometry pcl-conversions geometry-msgs openvdb ];
  propagatedBuildInputs = [ costmap-2d openexr pluginlib tf2-geometry-msgs sensor-msgs message-filters tf2-ros tbb pcl-ros laser-geometry visualization-msgs dynamic-reconfigure std-msgs roscpp pcl-conversions geometry-msgs openvdb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The spatio-temporal 3D obstacle costmap package'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
