
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, grid-map-ros, image-transport, laser-geometry, message-filters, nav-msgs, nodelet, octomap-msgs, pcl-conversions, pcl-ros, pluginlib, roscpp, rtabmap-conversions, rtabmap-msgs, sensor-msgs, std-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-util";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_util/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "db902b76a62667f47dfce67c7b16c48cabf09d6168f2cc4ac6ae8a0b3cca01d3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge grid-map-ros image-transport laser-geometry message-filters nav-msgs nodelet octomap-msgs pcl-conversions pcl-ros pluginlib roscpp rtabmap-conversions rtabmap-msgs sensor-msgs std-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map's various useful nodes and nodelets.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
