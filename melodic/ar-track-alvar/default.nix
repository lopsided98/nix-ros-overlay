
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, tinyxml, ar-track-alvar-msgs, rospy, pcl-ros, tf, pcl-conversions, geometry-msgs, image-transport, message-generation, message-runtime, rosbag, catkin, resource-retriever, std-msgs, roscpp, visualization-msgs, cmake-modules, sensor-msgs, rostest, tf2, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-ar-track-alvar";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ar_track_alvar-release/archive/release/melodic/ar_track_alvar/0.7.1-0.tar.gz;
    sha256 = "7b822678ef7330b5a3ecf5fd63547162178335534caf6bf4a739ad35c73d91ca";
  };

  checkInputs = [ rostest rosbag ];
  propagatedBuildInputs = [ image-transport sensor-msgs cv-bridge tinyxml roscpp rospy ar-track-alvar-msgs tf2 resource-retriever visualization-msgs pcl-ros std-msgs message-runtime dynamic-reconfigure tf pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ cv-bridge catkin tinyxml ar-track-alvar-msgs resource-retriever rospy pcl-ros std-msgs roscpp visualization-msgs tf pcl-conversions geometry-msgs cmake-modules image-transport sensor-msgs tf2 message-generation dynamic-reconfigure ];

  meta = {
    description = ''This package is a ROS wrapper for Alvar, an open source AR tag tracking library.'';
    #license = lib.licenses.LGPL-2.1;
  };
}
