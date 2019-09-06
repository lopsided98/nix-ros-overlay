
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, toposens-driver, tf2-ros, roscpp, tf2, rostest, message-runtime, toposens-msgs, pcl-ros, rospy, roslaunch, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-toposens-pointcloud";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_pointcloud/1.2.3-1";
    name = "archive.tar.gz";
    sha256 = "34fdfd623c03c1f6fa66b18e0799b1be9c24ef47b0dfe164d0725ca417769ace";
  };

  buildType = "catkin";
  buildInputs = [ tf2-geometry-msgs toposens-driver roscpp tf2-ros tf2 message-runtime toposens-msgs pcl-ros rospy visualization-msgs ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ tf2-geometry-msgs toposens-driver tf2-ros tf2 message-runtime visualization-msgs rospy toposens-msgs roscpp pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL integration for TS sensors mounted on Turtlebot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
