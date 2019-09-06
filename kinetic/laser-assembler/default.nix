
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, pluginlib, sensor-msgs, catkin, message-filters, roscpp, rostest, laser-geometry, message-generation, message-runtime, tf }:
buildRosPackage {
  pname = "ros-kinetic-laser-assembler";
  version = "1.7.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_assembler-release/archive/release/kinetic/laser_assembler/1.7.4-0.tar.gz";
    name = "1.7.4-0.tar.gz";
    sha256 = "b5eabbf6cf82af173cdd42834c62bc9382dfc1ffc77d669da5f3b59735ffd3c3";
  };

  buildType = "catkin";
  buildInputs = [ filters pluginlib tf sensor-msgs message-filters rostest laser-geometry message-generation roscpp ];
  propagatedBuildInputs = [ filters pluginlib tf sensor-msgs message-filters laser-geometry message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nodes to assemble point clouds from either LaserScan or PointCloud messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
