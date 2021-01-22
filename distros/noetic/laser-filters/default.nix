
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, dynamic-reconfigure, filters, laser-geometry, message-filters, pluginlib, roscpp, rostest, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-laser-filters";
  version = "1.8.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_filters-release/archive/release/noetic/laser_filters/1.8.11-1.tar.gz";
    name = "1.8.11-1.tar.gz";
    sha256 = "d23908e302de876e438f93ae7cd6e770080a2d49a2194f48698865285f213353";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ angles dynamic-reconfigure filters laser-geometry message-filters pluginlib roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Assorted filters designed to operate on 2D planar laser scanners,
    which use the sensor_msgs/LaserScan type.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
