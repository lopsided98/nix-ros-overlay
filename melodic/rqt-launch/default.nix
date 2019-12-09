
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-py-common, catkin, rqt-console, rqt-gui-py, rospy, roslaunch, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-launch";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_launch-release/archive/release/melodic/rqt_launch/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "7aab0c6b78ad90736d40ae6b7ce54048936ef38c0f032858b65a8347b4cbccc8";
  };

  buildType = "catkin";
  buildInputs = [ rqt-py-common ];
  propagatedBuildInputs = [ rqt-gui rqt-py-common rqt-console rqt-gui-py rospy roslaunch python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This rqt plugin ROS package provides easy view of .launch files.
  User can also start and end node by node that are defined in those files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
