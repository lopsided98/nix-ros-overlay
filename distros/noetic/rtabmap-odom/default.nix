
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry, laser-geometry, message-filters, nav-msgs, nodelet, pcl-conversions, pcl-ros, pluginlib, roscpp, rtabmap-conversions, rtabmap-msgs, rtabmap-util, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-odom";
  version = "0.21.1-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_odom/0.21.1-4.tar.gz";
    name = "0.21.1-4.tar.gz";
    sha256 = "3a658dcbd28828b7f3263ba4efdf1eb992db6ad0787833128726b7207d505bbf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-geometry laser-geometry message-filters nav-msgs nodelet pcl-conversions pcl-ros pluginlib roscpp rtabmap-conversions rtabmap-msgs rtabmap-util sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's odometry package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
