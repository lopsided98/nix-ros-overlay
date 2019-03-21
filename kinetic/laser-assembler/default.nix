
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, pluginlib, sensor-msgs, catkin, message-filters, roscpp, rostest, laser-geometry, message-generation, message-runtime, tf }:
buildRosPackage {
  pname = "ros-kinetic-laser-assembler";
  version = "1.7.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/laser_assembler-release/archive/release/kinetic/laser_assembler/1.7.4-0.tar.gz;
    sha256 = "669a7dfa27df01d2de4227c284ce13aa33f25a38f1a5846c3ea73aaf291fe21e";
  };

  propagatedBuildInputs = [ filters laser-geometry pluginlib message-runtime tf sensor-msgs roscpp message-filters ];
  nativeBuildInputs = [ filters pluginlib tf sensor-msgs catkin message-filters roscpp rostest message-generation laser-geometry ];

  meta = {
    description = ''Provides nodes to assemble point clouds from either LaserScan or PointCloud messages'';
    #license = lib.licenses.BSD;
  };
}
