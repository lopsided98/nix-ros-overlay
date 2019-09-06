
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, tinyxml, ar-track-alvar-msgs, rospy, pcl-ros, tf, pcl-conversions, geometry-msgs, image-transport, message-generation, message-runtime, rosbag, catkin, resource-retriever, std-msgs, visualization-msgs, roscpp, cmake-modules, sensor-msgs, tf2, rostest, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-ar-track-alvar";
  version = "0.7.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ar_track_alvar-release/archive/release/kinetic/ar_track_alvar/0.7.1-0.tar.gz";
    name = "0.7.1-0.tar.gz";
    sha256 = "38e265750e11ad3c7d0306220ad502490449d7a20fe8c43fc318499fef10d6c2";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules image-transport sensor-msgs cv-bridge tinyxml roscpp rospy ar-track-alvar-msgs tf2 message-generation resource-retriever visualization-msgs pcl-ros std-msgs dynamic-reconfigure tf pcl-conversions geometry-msgs ];
  checkInputs = [ rostest rosbag ];
  propagatedBuildInputs = [ image-transport sensor-msgs cv-bridge tinyxml roscpp ar-track-alvar-msgs tf2 pcl-ros resource-retriever message-runtime rospy std-msgs visualization-msgs dynamic-reconfigure tf pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a ROS wrapper for Alvar, an open source AR tag tracking library.'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
