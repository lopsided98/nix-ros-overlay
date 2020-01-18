
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-runtime, pcl-ros, roscpp, roslaunch, rospy, rostest, tf2, tf2-geometry-msgs, tf2-ros, toposens-description, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-pointcloud";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_pointcloud/2.0.0-1";
    name = "archive.tar.gz";
    sha256 = "974631470d3d0eb46536435f7afc2836e33e4b478449e38c69a00c8a676f5cea";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ message-runtime pcl-ros roscpp rospy tf2 tf2-geometry-msgs tf2-ros toposens-description toposens-driver toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL integration for TS sensors mounted on Turtlebot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
