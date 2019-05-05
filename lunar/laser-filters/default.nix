
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, pluginlib, sensor-msgs, catkin, message-filters, roscpp, rostest, laser-geometry, angles, tf }:
buildRosPackage {
  pname = "ros-lunar-laser-filters";
  version = "1.8.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/laser_filters-release/archive/release/lunar/laser_filters/1.8.5-0.tar.gz;
    sha256 = "d3c51d029df08cc5a39cb87e834f2699890fa73d1ab9b26afd8ae429aa33a6e7";
  };

  buildInputs = [ filters pluginlib tf sensor-msgs message-filters rostest laser-geometry angles roscpp ];
  propagatedBuildInputs = [ filters pluginlib tf sensor-msgs message-filters laser-geometry angles roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Assorted filters designed to operate on 2D planar laser scanners,
    which use the sensor_msgs/LaserScan type.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
