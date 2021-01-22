
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, cv-bridge, geometry-msgs, image-transport, nav-msgs, pluginlib, roscpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-fetch-depth-layer";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_depth_layer/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "2282dd7a2307b872015212dcdca14f3efba3e36f80f930d8b98a5ef728f8f99b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d cv-bridge geometry-msgs image-transport nav-msgs pluginlib roscpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetch_depth_layer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
