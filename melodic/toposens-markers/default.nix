
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, toposens-driver, dynamic-reconfigure, toposens-msgs, catkin, toposens-description, rospy, roscpp, rviz-visual-tools, message-runtime, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-melodic-toposens-markers";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_markers/1.3.0-1";
    name = "archive.tar.gz";
    sha256 = "24acbd00e98e7a853e4d2fba76494626ef3d02d686b1bc7bea52f5ba57d5acee";
  };

  buildType = "catkin";
  buildInputs = [ toposens-driver dynamic-reconfigure toposens-msgs rospy roscpp rviz-visual-tools message-runtime ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ toposens-driver dynamic-reconfigure toposens-msgs toposens-description rospy roscpp rviz-visual-tools message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz integration for TS sensor data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
