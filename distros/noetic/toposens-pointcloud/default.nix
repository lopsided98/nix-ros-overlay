
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, pcl-ros, roscpp, roslaunch, rostest, tf2, tf2-geometry-msgs, toposens-driver, toposens-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-toposens-pointcloud";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/noetic/toposens_pointcloud/2.2.0-1";
    name = "archive.tar.gz";
    sha256 = "6138f8316780d7878411313f52d8e7c81931bae7bdcae3f2b26eb226034d62a1";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ geometry-msgs message-runtime pcl-ros roscpp tf2 tf2-geometry-msgs toposens-driver toposens-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL integration for TS sensors mounted on Turtlebot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
