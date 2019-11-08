
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-qt-dotgraph";
  version = "0.3.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_dotgraph/0.3.15-1.tar.gz";
    name = "0.3.15-1.tar.gz";
    sha256 = "9c2b54e2ef865ad489d11dec99ec68fdadc3665dcee57ed5ce432563881edbde";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.pygraphviz ];
  propagatedBuildInputs = [ pythonPackages.pydot python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_dotgraph provides helpers to work with dot graphs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
