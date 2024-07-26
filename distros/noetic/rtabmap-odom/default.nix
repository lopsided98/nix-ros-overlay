
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry, laser-geometry, message-filters, nav-msgs, nodelet, pcl-conversions, pcl-ros, pluginlib, roscpp, rtabmap-conversions, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-odom";
  version = "0.21.5-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_odom/0.21.5-1.tar.gz";
    name = "0.21.5-1.tar.gz";
    sha256 = "e1e6819c9b457ec478c217ebbd47964c7d9f2b58e284f1fa37142c3782633d33";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-geometry laser-geometry message-filters nav-msgs nodelet pcl-conversions pcl-ros pluginlib roscpp rtabmap-conversions rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map's odometry package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
