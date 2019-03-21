
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, pythonPackages, rosmsg, catkin, qt-gui-py-common, rqt-py-common, roslib, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-publisher";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_publisher-release/archive/release/melodic/rqt_publisher/0.4.8-0.tar.gz;
    sha256 = "9411fa1eb8fefee5ab7653c83dc2baa44cf352797759436fdfaa48de29e098e3";
  };

  propagatedBuildInputs = [ rqt-gui-py roslib qt-gui-py-common rosmsg pythonPackages.rospkg rqt-py-common rqt-gui python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.'';
    #license = lib.licenses.BSD;
  };
}
