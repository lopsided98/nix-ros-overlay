
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar-msgs, catkin, cmake-modules, cv-bridge, dynamic-reconfigure, geometry-msgs, image-transport, message-generation, message-runtime, pcl-conversions, pcl-ros, resource-retriever, rosbag, roscpp, rospy, rostest, sensor-msgs, std-msgs, tf, tf2, tinyxml, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ar-track-alvar";
  version = "0.7.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ar_track_alvar-release/archive/release/kinetic/ar_track_alvar/0.7.1-0.tar.gz";
    name = "0.7.1-0.tar.gz";
    sha256 = "38e265750e11ad3c7d0306220ad502490449d7a20fe8c43fc318499fef10d6c2";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  checkInputs = [ rosbag rostest ];
  propagatedBuildInputs = [ ar-track-alvar-msgs cv-bridge dynamic-reconfigure geometry-msgs image-transport message-runtime pcl-conversions pcl-ros resource-retriever roscpp rospy sensor-msgs std-msgs tf tf2 tinyxml visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a ROS wrapper for Alvar, an open source AR tag tracking library.'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
