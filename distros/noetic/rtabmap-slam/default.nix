
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, apriltag-ros, catkin, cv-bridge, geometry-msgs, move-base-msgs, nav-msgs, nodelet, pluginlib, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs, std-msgs, std-srvs, tf, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-slam";
  version = "0.21.9-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_slam/0.21.9-1.tar.gz";
    name = "0.21.9-1.tar.gz";
    sha256 = "b24e316de8a4199b7caf694647e3ac17fb1ae1a724227627df04a30493d857be";
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
