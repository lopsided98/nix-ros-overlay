
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, pluginlib, sensor-msgs, catkin, message-filters, roscpp, rostest, laser-geometry, angles, tf }:
buildRosPackage {
  pname = "ros-kinetic-laser-filters";
  version = "1.8.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/laser_filters-release/archive/release/kinetic/laser_filters/1.8.5-0.tar.gz;
    sha256 = "488974cb235caec153bb9c67b53d712ccff41819978324722b9ef7e064642f4a";
  };

  propagatedBuildInputs = [ filters laser-geometry pluginlib angles tf sensor-msgs roscpp message-filters ];
  nativeBuildInputs = [ filters pluginlib tf sensor-msgs catkin message-filters roscpp rostest angles laser-geometry ];

  meta = {
    description = ''Assorted filters designed to operate on 2D planar laser scanners,
    which use the sensor_msgs/LaserScan type.'';
    #license = lib.licenses.BSD;
  };
}
