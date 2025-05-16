
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, roslaunch, rospy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-noetic-rqt-launch";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_launch-release/archive/release/noetic/rqt_launch/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "9979befbed638c77217e58a2fe588ec36a1b3ea1bade7caf805c1389ffdc72b4";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python-qt-binding roslaunch rospy rqt-console rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "This rqt plugin ROS package provides easy view of .launch files.
  User can also start and end node by node that are defined in those files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
