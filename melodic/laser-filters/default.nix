
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, pluginlib, tf, filters, laser-geometry, catkin, roscpp, angles, rostest }:
buildRosPackage {
  pname = "ros-melodic-laser-filters";
  version = "1.8.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_filters-release/archive/release/melodic/laser_filters/1.8.8-1.tar.gz";
    name = "1.8.8-1.tar.gz";
    sha256 = "2511dc381cf42ca7373f5e34483ca8d75cdc2975f30aa84266a271723b91654d";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters pluginlib tf filters laser-geometry roscpp angles rostest ];
  propagatedBuildInputs = [ sensor-msgs message-filters pluginlib tf filters laser-geometry roscpp angles ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Assorted filters designed to operate on 2D planar laser scanners,
    which use the sensor_msgs/LaserScan type.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
