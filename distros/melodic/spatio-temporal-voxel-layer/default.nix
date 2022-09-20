
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, laser-geometry, message-filters, message-generation, openexr, openvdb, pcl-conversions, pcl-ros, pluginlib, roscpp, sensor-msgs, std-msgs, tbb, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-spatio-temporal-voxel-layer";
  version = "1.3.5-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/melodic/spatio_temporal_voxel_layer/1.3.5-2.tar.gz";
    name = "1.3.5-2.tar.gz";
    sha256 = "c4f1a275ab85e04a11a2a5a3a300ec41375da9877b087036ddc5f50b381546fd";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure geometry-msgs laser-geometry message-filters openexr openvdb pcl-conversions pcl-ros pluginlib roscpp sensor-msgs std-msgs tbb tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The spatio-temporal 3D obstacle costmap package'';
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
