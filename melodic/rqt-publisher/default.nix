
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, python-qt-binding, catkin, rqt-gui, pythonPackages, rosmsg, rqt-py-common, roslib, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-melodic-rqt-publisher";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_publisher-release/archive/release/melodic/rqt_publisher/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "9411fa1eb8fefee5ab7653c83dc2baa44cf352797759436fdfaa48de29e098e3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui rosmsg qt-gui-py-common rqt-py-common roslib python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
