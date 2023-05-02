
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-conversions, pluginlib, roscpp, rtabmap-conversions, rtabmap-msgs, rviz, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-rviz-plugins";
  version = "0.21.1-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_rviz_plugins/0.21.1-4.tar.gz";
    name = "0.21.1-4.tar.gz";
    sha256 = "21e0167f69122fd3fea7acd549745f47e67526b80d8e5e7b463e53a1bdf457fa";
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
