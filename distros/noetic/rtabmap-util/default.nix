
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, grid-map-ros, image-transport, laser-geometry, message-filters, nav-msgs, nodelet, octomap-msgs, pcl-conversions, pcl-ros, pluginlib, roscpp, rtabmap-conversions, rtabmap-msgs, sensor-msgs, std-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-util";
  version = "0.21.10-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_util/0.21.10-1.tar.gz";
    name = "0.21.10-1.tar.gz";
    sha256 = "6e49d8e2c9f280e65ea85a8593829bf916a185683ee8c6c1bd2f5687c03b0a9d";
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
