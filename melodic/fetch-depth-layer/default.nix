
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, image-transport, sensor-msgs, cv-bridge, catkin, tf2-ros, nav-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-fetch-depth-layer";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_depth_layer/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "2282dd7a2307b872015212dcdca14f3efba3e36f80f930d8b98a5ef728f8f99b";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d pluginlib image-transport sensor-msgs cv-bridge tf2-ros nav-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib image-transport sensor-msgs cv-bridge tf2-ros nav-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetch_depth_layer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
