
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, pluginlib, sensor-msgs, catkin, message-filters, roscpp, rostest, laser-geometry, angles, tf }:
buildRosPackage {
  pname = "ros-melodic-laser-filters";
  version = "1.8.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/laser_filters-release/archive/release/melodic/laser_filters/1.8.6-0.tar.gz;
    sha256 = "7429472a08b080cae1e101e9e96443b884791926ad59479c553809669347d46e";
  };

  propagatedBuildInputs = [ filters laser-geometry pluginlib angles tf sensor-msgs roscpp message-filters ];
  nativeBuildInputs = [ filters pluginlib tf sensor-msgs catkin message-filters roscpp rostest angles laser-geometry ];

  meta = {
    description = ''Assorted filters designed to operate on 2D planar laser scanners,
    which use the sensor_msgs/LaserScan type.'';
    #license = lib.licenses.BSD;
  };
}
