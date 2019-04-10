
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, tinyxml, ar-track-alvar-msgs, rospy, pcl-ros, tf, pcl-conversions, geometry-msgs, image-transport, message-generation, message-runtime, rosbag, catkin, resource-retriever, std-msgs, visualization-msgs, roscpp, cmake-modules, sensor-msgs, tf2, rostest, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-lunar-ar-track-alvar";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ar_track_alvar-release/archive/release/lunar/ar_track_alvar/0.7.1-0.tar.gz;
    sha256 = "d2700ee96bcf3a7fcdc90ed098e8724cd1a01bf3ec973782f3c8ee7d5294b9b2";
  };

  buildInputs = [ cmake-modules image-transport sensor-msgs cv-bridge tinyxml roscpp rospy ar-track-alvar-msgs tf2 message-generation resource-retriever visualization-msgs pcl-ros std-msgs dynamic-reconfigure tf pcl-conversions geometry-msgs ];
  checkInputs = [ rostest rosbag ];
  propagatedBuildInputs = [ image-transport sensor-msgs cv-bridge tinyxml roscpp rospy ar-track-alvar-msgs tf2 resource-retriever visualization-msgs pcl-ros std-msgs message-runtime dynamic-reconfigure tf pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a ROS wrapper for Alvar, an open source AR tag tracking library.'';
    #license = lib.licenses.LGPL-2.1;
  };
}
