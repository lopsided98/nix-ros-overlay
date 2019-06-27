
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, openexr, pluginlib, sensor-msgs, catkin, message-filters, tf2-ros, tbb, laser-geometry, message-generation, visualization-msgs, pcl-ros, std-msgs, dynamic-reconfigure, roscpp, pcl-conversions, geometry-msgs, openvdb }:
buildRosPackage {
  pname = "ros-melodic-spatio-temporal-voxel-layer";
  version = "1.3.2-r1";

  src = fetchurl {
    url = https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/melodic/spatio_temporal_voxel_layer/1.3.2-1.tar.gz;
    sha256 = "34c299d65cfd063819da941725c00763e17d8a295b02dd5319c019e477f4c2bb";
  };

  buildInputs = [ costmap-2d openexr pluginlib sensor-msgs message-filters roscpp tf2-ros tbb laser-geometry message-generation pcl-ros std-msgs dynamic-reconfigure visualization-msgs pcl-conversions geometry-msgs openvdb ];
  propagatedBuildInputs = [ costmap-2d openexr pluginlib sensor-msgs message-filters roscpp tf2-ros tbb laser-geometry pcl-ros std-msgs dynamic-reconfigure visualization-msgs pcl-conversions geometry-msgs openvdb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The spatio-temporal 3D obstacle costmap package'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
