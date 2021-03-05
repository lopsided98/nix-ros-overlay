
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, cv-bridge, geometry-msgs, image-transport, nav-msgs, pluginlib, roscpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-fetch-depth-layer";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/noetic/fetch_depth_layer/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "a486778a773b3f05efccaec69c6e2500a85f178300594cf835ff9d59f6b5e088";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d cv-bridge geometry-msgs image-transport nav-msgs pluginlib roscpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetch_depth_layer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
