
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, roslaunch, rospy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-noetic-rqt-launch";
  version = "0.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_launch-release/archive/release/noetic/rqt_launch/0.4.9-1.tar.gz";
    name = "0.4.9-1.tar.gz";
    sha256 = "0ceffc4030539f905537cbca95f87106c35c838aa3742418bfcac5020a2cc303";
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
