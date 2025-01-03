
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, dynamic-reconfigure, filters, laser-geometry, message-filters, nodelet, pluginlib, roscpp, rostest, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-laser-filters";
  version = "1.9.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_filters-release/archive/release/noetic/laser_filters/1.9.1-2.tar.gz";
    name = "1.9.1-2.tar.gz";
    sha256 = "c67544170c95d095bc850b633eb803cc63ac55ae8b6b7f4952994349098859aa";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ angles dynamic-reconfigure filters laser-geometry message-filters nodelet pluginlib roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Assorted filters designed to operate on 2D planar laser scanners,
    which use the sensor_msgs/LaserScan type.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
