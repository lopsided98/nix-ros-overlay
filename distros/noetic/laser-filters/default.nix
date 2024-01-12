
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, dynamic-reconfigure, filters, laser-geometry, message-filters, nodelet, pluginlib, roscpp, rostest, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-laser-filters";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_filters-release/archive/release/noetic/laser_filters/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "e802be9bc80e6352906e628b86cbfdbcce37b45da5890146d21893095514b6b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ angles dynamic-reconfigure filters laser-geometry message-filters nodelet pluginlib roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Assorted filters designed to operate on 2D planar laser scanners,
    which use the sensor_msgs/LaserScan type.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
