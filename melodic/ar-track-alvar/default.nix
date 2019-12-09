
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, image-transport, tf2, rostest, sensor-msgs, dynamic-reconfigure, resource-retriever, cmake-modules, rosbag, pcl-ros, std-msgs, catkin, cv-bridge, roscpp, ar-track-alvar-msgs, message-generation, rospy, tinyxml, pcl-conversions, visualization-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-ar-track-alvar";
  version = "0.7.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ar_track_alvar-release/archive/release/melodic/ar_track_alvar/0.7.1-0.tar.gz";
    name = "0.7.1-0.tar.gz";
    sha256 = "7b822678ef7330b5a3ecf5fd63547162178335534caf6bf4a739ad35c73d91ca";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs geometry-msgs dynamic-reconfigure resource-retriever std-msgs tf cmake-modules roscpp tinyxml image-transport cv-bridge pcl-conversions visualization-msgs tf2 rospy ar-track-alvar-msgs message-generation ];
  checkInputs = [ rosbag rostest ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs geometry-msgs dynamic-reconfigure message-runtime resource-retriever std-msgs tf roscpp tinyxml image-transport cv-bridge pcl-conversions visualization-msgs tf2 ar-track-alvar-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a ROS wrapper for Alvar, an open source AR tag tracking library.'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
