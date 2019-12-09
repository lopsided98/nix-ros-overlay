
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, toposens-driver, toposens-msgs, catkin, tf2, tf2-geometry-msgs, toposens-description, rospy, roscpp, message-runtime, roslaunch, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-toposens-pointcloud";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_pointcloud/1.3.0-1";
    name = "archive.tar.gz";
    sha256 = "63768a1d8acd5eadfa7352cb5a37b77edc960fab76f3def796c2b788f1254754";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros toposens-driver toposens-msgs tf2 tf2-geometry-msgs rospy roscpp message-runtime tf2-ros ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ pcl-ros toposens-driver message-runtime toposens-msgs roscpp tf2-geometry-msgs toposens-description tf2 rospy tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL integration for TS sensors mounted on Turtlebot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
