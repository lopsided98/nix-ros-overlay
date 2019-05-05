
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, gl-dependency, catkin, rqt-gui, pythonPackages, rostopic, rospy, rqt-py-common, tf, python-qt-binding, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-rqt-pose-view";
  version = "0.5.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_pose_view-release/archive/release/lunar/rqt_pose_view/0.5.8-0.tar.gz;
    sha256 = "f51caf04795d572c5c833e37ed8cff9f3a0b45221dcfd94cac6ff5c878acd9cb";
  };

  propagatedBuildInputs = [ rqt-gui-py geometry-msgs pythonPackages.rospkg rqt-gui rostopic pythonPackages.pyopengl rospy rqt-py-common tf python-qt-binding gl-dependency ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_pose_view provides a GUI plugin for visualizing 3D poses.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
