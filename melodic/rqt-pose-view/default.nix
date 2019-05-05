
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, gl-dependency, catkin, rqt-gui, pythonPackages, rostopic, rospy, rqt-py-common, tf, python-qt-binding, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-pose-view";
  version = "0.5.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_pose_view-release/archive/release/melodic/rqt_pose_view/0.5.8-0.tar.gz;
    sha256 = "00e9962e4a7132dcb9082692fb49563d309b9e446b5eb17e65354dd7e1e24e4d";
  };

  propagatedBuildInputs = [ rqt-gui-py geometry-msgs pythonPackages.rospkg rqt-gui rostopic pythonPackages.pyopengl rospy rqt-py-common tf python-qt-binding gl-dependency ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_pose_view provides a GUI plugin for visualizing 3D poses.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
