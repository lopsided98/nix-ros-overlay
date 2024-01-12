
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gl-dependency, python-qt-binding, python3Packages, rospy, rostopic, rqt-gui, rqt-gui-py, rqt-py-common, tf }:
buildRosPackage {
  pname = "ros-noetic-rqt-pose-view";
  version = "0.5.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_pose_view-release/archive/release/noetic/rqt_pose_view/0.5.11-1.tar.gz";
    name = "0.5.11-1.tar.gz";
    sha256 = "cf7dbeba319b1a3b934ea9e89457dbe292d07e7fb7a01946adb802eb232acb61";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs gl-dependency python-qt-binding python3Packages.pyopengl python3Packages.rospkg rospy rostopic rqt-gui rqt-gui-py rqt-py-common tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_pose_view provides a GUI plugin for visualizing 3D poses.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
