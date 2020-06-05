
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-qt-dotgraph";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_dotgraph/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "527e75497946fd166abe67941bfd0ce7959fbd15d014b1ee2647b1f013e32d07";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.pygraphviz ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.pydot ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''qt_dotgraph provides helpers to work with dot graphs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
