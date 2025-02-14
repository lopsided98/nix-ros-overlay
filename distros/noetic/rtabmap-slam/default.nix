
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, apriltag-ros, catkin, cv-bridge, geometry-msgs, move-base-msgs, nav-msgs, nodelet, pluginlib, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs, std-msgs, std-srvs, tf, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-slam";
  version = "0.21.10-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_slam/0.21.10-1.tar.gz";
    name = "0.21.10-1.tar.gz";
    sha256 = "bdff2d659ea89678b57798af87fb5de83874f36d5dd399b67103119fcb6e6f06";
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
