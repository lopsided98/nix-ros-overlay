
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, pythonPackages, catkin, qt-gui, qt-gui-py-common, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-py-console";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_py_console-release/archive/release/kinetic/rqt_py_console/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "dc6a7cfe4cea3d4956723169b8c0a942407abef422390e0af42fa3a3ddb291e8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui qt-gui qt-gui-py-common rospy python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_py_console is a Python GUI plugin providing an interactive Python console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
