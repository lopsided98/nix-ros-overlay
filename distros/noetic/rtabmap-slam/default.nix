
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, apriltag-ros, catkin, cv-bridge, geometry-msgs, move-base-msgs, nav-msgs, nodelet, pluginlib, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs, std-msgs, std-srvs, tf, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-slam";
  version = "0.21.13-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_slam/0.21.13-1.tar.gz";
    name = "0.21.13-1.tar.gz";
    sha256 = "3ec6f81eeb1c3a83bd2718a1d4920b15134f7c1fd69d5cd2adf7aedddf68f7c4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs apriltag-ros cv-bridge geometry-msgs move-base-msgs nav-msgs nodelet pluginlib rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs std-msgs std-srvs tf tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map's SLAM package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
