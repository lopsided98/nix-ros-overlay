
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, toposens-driver, roscpp, rostest, rviz, message-runtime, toposens-msgs, pcl-ros, rospy, roslaunch, tf }:
buildRosPackage {
  pname = "ros-melodic-toposens-pointcloud";
  version = "1.0.0-r3";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_pointcloud/1.0.0-3;
    sha256 = "dd8d2201affae725bc35809f6b36f6b81cb1ccd67ac2f6209aab42158b4062c9";
  };

  buildInputs = [ tf toposens-driver rviz message-runtime toposens-msgs pcl-ros rospy roscpp ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ tf toposens-driver rviz message-runtime toposens-msgs pcl-ros rospy roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL integration for TS sensors mounted on Turtlebot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
