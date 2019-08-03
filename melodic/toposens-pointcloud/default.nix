
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, toposens-driver, tf2-ros, roscpp, tf2, rostest, message-runtime, toposens-msgs, pcl-ros, rospy, roslaunch, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-toposens-pointcloud";
  version = "1.2.2-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_pointcloud/1.2.2-1;
    sha256 = "4138001b935edd28678321026b9734f16746e0f66b2689f93c6fb272dd3f97d2";
  };

  buildInputs = [ tf2-geometry-msgs toposens-driver roscpp tf2-ros tf2 message-runtime toposens-msgs pcl-ros rospy visualization-msgs ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ tf2-geometry-msgs toposens-driver roscpp tf2-ros tf2 message-runtime toposens-msgs pcl-ros rospy visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL integration for TS sensors mounted on Turtlebot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
