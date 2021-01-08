
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt-gui, rospy }:
buildRosPackage {
  pname = "ros-melodic-rqt-gui";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/melodic/rqt_gui/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "58c5fb5f561a860a826298b4b368df4bb865ed44c79f077f437bddf3436f27cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg qt-gui rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
