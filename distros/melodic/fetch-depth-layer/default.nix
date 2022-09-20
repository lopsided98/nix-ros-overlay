
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, cv-bridge, geometry-msgs, image-transport, nav-msgs, pluginlib, roscpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-fetch-depth-layer";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_depth_layer/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "490e0726b5855cdb1b1d6185c3d7960b6898854b580c19b44405af2f9c089439";
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
