
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, pluginlib, sensor-msgs, catkin, message-filters, roscpp, rostest, laser-geometry, message-generation, message-runtime, tf }:
buildRosPackage {
  pname = "ros-lunar-laser-assembler";
  version = "1.7.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/laser_assembler-release/archive/release/lunar/laser_assembler/1.7.4-0.tar.gz;
    sha256 = "8caa3924c6a926d5baab4adeb575763012b8cd2f2dda456a8458b645afbf0930";
  };

  buildInputs = [ filters pluginlib tf sensor-msgs message-filters roscpp rostest message-generation laser-geometry ];
  propagatedBuildInputs = [ filters laser-geometry pluginlib message-runtime tf sensor-msgs roscpp message-filters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nodes to assemble point clouds from either LaserScan or PointCloud messages'';
    #license = lib.licenses.BSD;
  };
}
