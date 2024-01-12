
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-gui, rospy }:
buildRosPackage {
  pname = "ros-noetic-rqt-gui";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/noetic/rqt_gui/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "aa55a946456a86035c97ea159bd9c71d8a410e8e069fc3df1cd585649b78308d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg qt-gui rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
