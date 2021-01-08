
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gl-dependency, python-qt-binding, pythonPackages, rospy, rostopic, rqt-gui, rqt-gui-py, rqt-py-common, tf }:
buildRosPackage {
  pname = "ros-kinetic-rqt-pose-view";
  version = "0.5.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_pose_view-release/archive/release/kinetic/rqt_pose_view/0.5.8-0.tar.gz";
    name = "0.5.8-0.tar.gz";
    sha256 = "edc43dd3e9e64426de3841b197e9980e330b2c6678a12917e50f3a20c9e4d5e9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs gl-dependency python-qt-binding pythonPackages.pyopengl pythonPackages.rospkg rospy rostopic rqt-gui rqt-gui-py rqt-py-common tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_pose_view provides a GUI plugin for visualizing 3D poses.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
