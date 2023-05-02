
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, laser-geometry, message-filters, nav-msgs, nodelet, octomap-msgs, pcl-conversions, pcl-ros, pluginlib, roscpp, rtabmap-conversions, rtabmap-msgs, sensor-msgs, std-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-util";
  version = "0.21.1-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_util/0.21.1-4.tar.gz";
    name = "0.21.1-4.tar.gz";
    sha256 = "564477ca54ef1a7143a59ad56b5a7c0b3d1033f94a0d472407acc1ec08916d51";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-transport laser-geometry message-filters nav-msgs nodelet octomap-msgs pcl-conversions pcl-ros pluginlib roscpp rtabmap-conversions rtabmap-msgs sensor-msgs std-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's various useful nodes and nodelets.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
