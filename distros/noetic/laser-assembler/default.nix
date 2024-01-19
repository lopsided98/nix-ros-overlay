
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, filters, laser-geometry, message-filters, message-generation, message-runtime, pluginlib, roscpp, rostest, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-laser-assembler";
  version = "1.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_assembler-release/archive/release/noetic/laser_assembler/1.7.8-1.tar.gz";
    name = "1.7.8-1.tar.gz";
    sha256 = "4d50d7eb169caf53f5027b63c5165647834c3dddf82ba66ddcf40a5a8437fbc8";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  propagatedBuildInputs = [ filters laser-geometry message-filters message-runtime pluginlib roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides nodes to assemble point clouds from either LaserScan or PointCloud messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
