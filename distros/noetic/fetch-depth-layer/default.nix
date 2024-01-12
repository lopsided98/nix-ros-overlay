
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, cv-bridge, geometry-msgs, image-transport, nav-msgs, pluginlib, roscpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-fetch-depth-layer";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/noetic/fetch_depth_layer/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "42b7005d4a31d5ef1c928f52c0dc93f8106833a1a5170cec4e7f10f9defec6be";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-2d cv-bridge geometry-msgs image-transport nav-msgs pluginlib roscpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetch_depth_layer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
