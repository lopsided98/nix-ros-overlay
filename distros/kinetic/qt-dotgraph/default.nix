
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-qt-dotgraph";
  version = "0.3.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/kinetic/qt_dotgraph/0.3.17-1.tar.gz";
    name = "0.3.17-1.tar.gz";
    sha256 = "687e7f72d0b227075eb7ad40f178ff3b925b439c0252c62e1847fe19950dc39b";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.pygraphviz ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.pydot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_dotgraph provides helpers to work with dot graphs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
