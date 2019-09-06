
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, openexr, pluginlib, tf, sensor-msgs, catkin, message-filters, roscpp, tbb, message-generation, visualization-msgs, pcl-ros, std-msgs, dynamic-reconfigure, laser-geometry, pcl-conversions, geometry-msgs, openvdb }:
buildRosPackage {
  pname = "ros-kinetic-spatio-temporal-voxel-layer";
  version = "1.2.1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/spatio_temporal_voxel_layer-release/archive/release/kinetic/spatio_temporal_voxel_layer/1.2.1-0.tar.gz";
    name = "1.2.1-0.tar.gz";
    sha256 = "01447433873335a28db5ee7146abec292d04aaa42d4bfe6a174a254e8ae48b18";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d openexr pluginlib sensor-msgs message-filters roscpp tbb laser-geometry message-generation visualization-msgs pcl-ros std-msgs dynamic-reconfigure tf pcl-conversions geometry-msgs openvdb ];
  propagatedBuildInputs = [ costmap-2d openexr pluginlib sensor-msgs message-filters roscpp tbb pcl-ros laser-geometry visualization-msgs dynamic-reconfigure std-msgs tf pcl-conversions geometry-msgs openvdb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The spatio-temporal 3D obstacle costmap package'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
