
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, dynamic-reconfigure, filters, laser-geometry, message-filters, pluginlib, roscpp, rostest, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-laser-filters";
  version = "1.8.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_filters-release/archive/release/melodic/laser_filters/1.8.11-1.tar.gz";
    name = "1.8.11-1.tar.gz";
    sha256 = "c04a129db4b21ae1524e819d9f080826d7410449f843a4f3b915a62b4a72e970";
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
