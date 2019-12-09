
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, qt-gui-py-common, pythonPackages, catkin, rqt-gui-py, qt-gui, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-py-console";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_py_console-release/archive/release/melodic/rqt_py_console/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "0c5714fce4f464fa175e42a7c8fc0ced483fdcfbd90cf4c8584f40b3cf208242";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui qt-gui-py-common pythonPackages.rospkg rqt-gui-py qt-gui rospy python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_py_console is a Python GUI plugin providing an interactive Python console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
