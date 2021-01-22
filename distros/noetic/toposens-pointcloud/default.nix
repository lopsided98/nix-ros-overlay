
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, pcl-ros, roscpp, roslaunch, rostest, tf2, tf2-geometry-msgs, toposens-driver, toposens-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-toposens-pointcloud";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/noetic/toposens_pointcloud/2.1.0-1";
    name = "archive.tar.gz";
    sha256 = "91acf806538ab42f694b5a05849e0c67cd90a58c3750edc57db77e48c2fcdfb6";
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
