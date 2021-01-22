
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, roslaunch, rospy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-kinetic-rqt-launch";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_launch-release/archive/release/kinetic/rqt_launch/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "4d52dc7d995ffe9e219c30f3c85ad15ed33ef5f7b87e216d48175da77302a242";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding roslaunch rospy rqt-console rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This rqt plugin ROS package provides easy view of .launch files.
  User can also start and end node by node that are defined in those files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
