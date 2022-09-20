
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt-gui, rospy }:
buildRosPackage {
  pname = "ros-melodic-rqt-gui";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/melodic/rqt_gui/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "89fb23e6d891b970dbe755a18c3fd92603bfdea4b7d6e75ed3dfb380e55ed8e5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg qt-gui rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
