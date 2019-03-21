
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, image-transport, sensor-msgs, cv-bridge, catkin, tf2-ros, nav-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-fetch-depth-layer";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_depth_layer/0.8.0-0.tar.gz;
    sha256 = "e1cfd4e3a0189c2cced8883704cdfe595d748b6df3acfcf4fa0a2cd98dc31f71";
  };

  propagatedBuildInputs = [ costmap-2d pluginlib image-transport sensor-msgs cv-bridge tf2-ros nav-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ costmap-2d pluginlib image-transport sensor-msgs cv-bridge catkin tf2-ros nav-msgs roscpp geometry-msgs ];

  meta = {
    description = ''The fetch_depth_layer package'';
    #license = lib.licenses.BSD;
  };
}
