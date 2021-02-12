
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, pcl-ros, roscpp, roslaunch, rostest, tf2, tf2-geometry-msgs, toposens-driver, toposens-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-toposens-pointcloud";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_pointcloud/2.2.0-1";
    name = "archive.tar.gz";
    sha256 = "7c64677f261879f46b1396a09d4f4a5f8eb5b11e65a62e607e4464052adaf42b";
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
