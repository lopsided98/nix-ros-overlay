
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, rqt-py-common, rqt-console, rospy, roslaunch, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-rqt-launch";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_launch-release/archive/release/lunar/rqt_launch/0.4.8-0.tar.gz;
    sha256 = "5dd7364599b1dca58adf893b2b068320fd49cfc70838d4837ead7d7917da1c1a";
  };

  buildInputs = [ rqt-py-common ];
  propagatedBuildInputs = [ roslaunch rqt-gui-py rqt-console rospy rqt-py-common rqt-gui python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This rqt plugin ROS package provides easy view of .launch files.
  User can also start and end node by node that are defined in those files.'';
    #license = lib.licenses.BSD;
  };
}
