
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, message-filters, pluginlib, tf, filters, laser-geometry, catkin, roscpp, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-kinetic-laser-assembler";
  version = "1.7.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_assembler-release/archive/release/kinetic/laser_assembler/1.7.4-0.tar.gz";
    name = "1.7.4-0.tar.gz";
    sha256 = "b5eabbf6cf82af173cdd42834c62bc9382dfc1ffc77d669da5f3b59735ffd3c3";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters pluginlib tf filters laser-geometry roscpp message-generation rostest ];
  propagatedBuildInputs = [ sensor-msgs message-filters pluginlib filters tf laser-geometry roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nodes to assemble point clouds from either LaserScan or PointCloud messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
