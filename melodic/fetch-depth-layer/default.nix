
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, image-transport, sensor-msgs, cv-bridge, catkin, tf2-ros, nav-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-fetch-depth-layer";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_depth_layer/0.8.1-0.tar.gz;
    sha256 = "4a5c83c6084a8a58d3354dcc60e37a02100d9b7ff3c8f1b0c00340bd1525b575";
  };

  buildInputs = [ costmap-2d pluginlib image-transport sensor-msgs cv-bridge tf2-ros nav-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib image-transport sensor-msgs cv-bridge tf2-ros nav-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetch_depth_layer package'';
    #license = lib.licenses.BSD;
  };
}
