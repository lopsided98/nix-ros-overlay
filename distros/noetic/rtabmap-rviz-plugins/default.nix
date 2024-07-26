
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-conversions, pluginlib, roscpp, rtabmap-conversions, rtabmap-msgs, rviz, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-rviz-plugins";
  version = "0.21.5-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_rviz_plugins/0.21.5-1.tar.gz";
    name = "0.21.5-1.tar.gz";
    sha256 = "9041a3f321bfd450bbccc8dee6492e1e102324dccb6a52c911b85fa316390063";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pcl-conversions pluginlib roscpp rtabmap-conversions rtabmap-msgs rviz sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map's rviz plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
