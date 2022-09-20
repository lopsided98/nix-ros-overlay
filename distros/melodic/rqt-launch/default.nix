
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, roslaunch, rospy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-melodic-rqt-launch";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_launch-release/archive/release/melodic/rqt_launch/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "7aab0c6b78ad90736d40ae6b7ce54048936ef38c0f032858b65a8347b4cbccc8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding roslaunch rospy rqt-console rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This rqt plugin ROS package provides easy view of .launch files.
  User can also start and end node by node that are defined in those files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
