
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, pcl-ros, roscpp, roslaunch, rospy, rostest, tf2, tf2-geometry-msgs, tf2-ros, toposens-description, toposens-driver, toposens-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-pointcloud";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_pointcloud/2.0.3-1";
    name = "archive.tar.gz";
    sha256 = "38fbb092a007324755e977aa9fe8a0dc46f7c8adf38ccb8b3884f9a8b0d1dfae";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ geometry-msgs message-runtime pcl-ros roscpp rospy tf2 tf2-geometry-msgs tf2-ros toposens-description toposens-driver toposens-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL integration for TS sensors mounted on Turtlebot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
