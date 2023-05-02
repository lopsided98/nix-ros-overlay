
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, apriltag-ros, catkin, cv-bridge, geometry-msgs, move-base-msgs, nav-msgs, nodelet, pluginlib, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs, std-msgs, std-srvs, tf, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-slam";
  version = "0.21.1-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_slam/0.21.1-4.tar.gz";
    name = "0.21.1-4.tar.gz";
    sha256 = "abfa90b7355bada7ac98956f8ad1861f4c2f82e957ab158ff2ef62bb9f0ba48b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs apriltag-ros cv-bridge geometry-msgs move-base-msgs nav-msgs nodelet pluginlib rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs std-msgs std-srvs tf tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's SLAM package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
