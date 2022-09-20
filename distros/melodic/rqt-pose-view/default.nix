
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gl-dependency, python-qt-binding, pythonPackages, rospy, rostopic, rqt-gui, rqt-gui-py, rqt-py-common, tf }:
buildRosPackage {
  pname = "ros-melodic-rqt-pose-view";
  version = "0.5.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_pose_view-release/archive/release/melodic/rqt_pose_view/0.5.8-0.tar.gz";
    name = "0.5.8-0.tar.gz";
    sha256 = "00e9962e4a7132dcb9082692fb49563d309b9e446b5eb17e65354dd7e1e24e4d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs gl-dependency python-qt-binding pythonPackages.pyopengl pythonPackages.rospkg rospy rostopic rqt-gui rqt-gui-py rqt-py-common tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_pose_view provides a GUI plugin for visualizing 3D poses.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
