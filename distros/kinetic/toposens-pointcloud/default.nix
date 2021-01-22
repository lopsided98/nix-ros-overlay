
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, pcl-ros, roscpp, roslaunch, rostest, tf2, tf2-geometry-msgs, toposens-driver, toposens-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-pointcloud";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_pointcloud/2.1.1-1";
    name = "archive.tar.gz";
    sha256 = "b0467c8c14ce9278ed79b00804421cb3bf034eaa25f32791595bc63aee3318f9";
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
