
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, pcl-ros, roscpp, roslaunch, rostest, tf2, tf2-geometry-msgs, toposens-driver, toposens-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-toposens-pointcloud";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/-/archive/release/melodic/toposens_pointcloud/2.3.2-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "51785eda7f4696d179a7946ccc91d83586eb97b978c9c1aa1ff9515daf913078";
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
