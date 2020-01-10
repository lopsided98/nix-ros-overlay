
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-runtime, pcl-ros, roscpp, roslaunch, rospy, rostest, tf2, tf2-geometry-msgs, tf2-ros, toposens-description, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-pointcloud";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_pointcloud/1.3.0-1";
    name = "archive.tar.gz";
    sha256 = "022c1e8bdcc84ab88abee36dd264f824dd4e65a4fda52da683321e03a1c90a00";
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
