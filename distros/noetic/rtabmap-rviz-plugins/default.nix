
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-conversions, pluginlib, roscpp, rtabmap-conversions, rtabmap-msgs, rviz, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-rviz-plugins";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_rviz_plugins/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "6ca14347561e6c1e06ade8d41d0eb14797332567f12fb49e14528e889c4130dc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pcl-conversions pluginlib roscpp rtabmap-conversions rtabmap-msgs rviz sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's rviz plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
