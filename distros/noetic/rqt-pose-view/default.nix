
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gl-dependency, python-qt-binding, python3Packages, rospy, rostopic, rqt-gui, rqt-gui-py, rqt-py-common, tf }:
buildRosPackage {
  pname = "ros-noetic-rqt-pose-view";
  version = "0.5.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_pose_view-release/archive/release/noetic/rqt_pose_view/0.5.10-1.tar.gz";
    name = "0.5.10-1.tar.gz";
    sha256 = "951223055a1d471928cc9509d91eeed6abe8633de993f414ec3e352edaff716f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs gl-dependency python-qt-binding python3Packages.pyopengl python3Packages.rospkg rospy rostopic rqt-gui rqt-gui-py rqt-py-common tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_pose_view provides a GUI plugin for visualizing 3D poses.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
