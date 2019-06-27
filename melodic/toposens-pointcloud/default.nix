
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, toposens-driver, tf2-ros, tf2, rostest, message-runtime, toposens-msgs, pcl-ros, rospy, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-melodic-toposens-pointcloud";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_pointcloud/1.1.0-1;
    sha256 = "f3486579c20bf72ca1987811b4431863cc3fa4b7103e03ff7ff771c2af915851";
  };

  buildInputs = [ tf2-geometry-msgs toposens-driver tf2-ros tf2 message-runtime toposens-msgs pcl-ros rospy roscpp ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ tf2-geometry-msgs toposens-driver tf2-ros tf2 message-runtime toposens-msgs pcl-ros rospy roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL integration for TS sensors mounted on Turtlebot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
