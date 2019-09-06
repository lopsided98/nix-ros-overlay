
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, pluginlib, sensor-msgs, catkin, message-filters, roscpp, rostest, laser-geometry, angles, tf }:
buildRosPackage {
  pname = "ros-melodic-laser-filters";
  version = "1.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_filters-release/archive/release/melodic/laser_filters/1.8.7-1.tar.gz";
    name = "1.8.7-1.tar.gz";
    sha256 = "4f67d8eb3aa88924ecb2b098095a25a4661af6632acd1feea5fd979060d18345";
  };

  buildType = "catkin";
  buildInputs = [ filters pluginlib tf sensor-msgs message-filters rostest laser-geometry angles roscpp ];
  propagatedBuildInputs = [ filters pluginlib tf sensor-msgs message-filters laser-geometry angles roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Assorted filters designed to operate on 2D planar laser scanners,
    which use the sensor_msgs/LaserScan type.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
