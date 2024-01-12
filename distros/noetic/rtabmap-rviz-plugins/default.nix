
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-conversions, pluginlib, roscpp, rtabmap-conversions, rtabmap-msgs, rviz, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-rviz-plugins";
  version = "0.21.3-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_rviz_plugins/0.21.3-4.tar.gz";
    name = "0.21.3-4.tar.gz";
    sha256 = "0421389934360b110f1427e75101aba16f9ee8faa45e9fe15006e6a65e646cc4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pcl-conversions pluginlib roscpp rtabmap-conversions rtabmap-msgs rviz sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's rviz plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
