
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, pluginlib, sensor-msgs, catkin, message-filters, roscpp, rostest, laser-geometry, message-generation, message-runtime, tf }:
buildRosPackage {
  pname = "ros-melodic-laser-assembler";
  version = "1.7.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/laser_assembler-release/archive/release/melodic/laser_assembler/1.7.6-0.tar.gz;
    sha256 = "e9f578692846ccaf041da048fcfcef51d1a421a2869c94d2970541af319d3823";
  };

  buildInputs = [ filters pluginlib tf sensor-msgs message-filters roscpp rostest message-generation laser-geometry ];
  propagatedBuildInputs = [ filters laser-geometry pluginlib message-runtime tf sensor-msgs roscpp message-filters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nodes to assemble point clouds from either LaserScan or PointCloud messages'';
    #license = lib.licenses.BSD;
  };
}
