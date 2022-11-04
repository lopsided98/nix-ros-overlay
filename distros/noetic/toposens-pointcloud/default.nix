
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, pcl-ros, roscpp, roslaunch, rostest, tf2, tf2-geometry-msgs, toposens-driver, toposens-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-toposens-pointcloud";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/-/archive/release/noetic/toposens_pointcloud/2.3.2-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "7047dcf9ebc0a6383a42f4665b4c756538de1c21a2d6be2ad2a0d623fb23b059";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ geometry-msgs message-runtime pcl-ros roscpp tf2 tf2-geometry-msgs toposens-driver toposens-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL integration for TS sensors mounted on Turtlebot3.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
