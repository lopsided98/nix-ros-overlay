
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, apriltag-ros, catkin, cv-bridge, geometry-msgs, move-base-msgs, nav-msgs, nodelet, pluginlib, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs, std-msgs, std-srvs, tf, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-slam";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_slam/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "621db97d5080b4b0cd7da4649bad221d74a3351afa6c2ce71dda81a5108feba7";
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
