
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, pluginlib, sensor-msgs, catkin, message-filters, roscpp, rostest, laser-geometry, angles, tf }:
buildRosPackage {
  pname = "ros-kinetic-laser-filters";
  version = "1.8.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/laser_filters-release/archive/release/kinetic/laser_filters/1.8.5-0.tar.gz;
    sha256 = "1fda3b068605b6ce9553eb1d4f050ca8de9656c68a79803f81756b47de6bf05d";
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
