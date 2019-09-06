
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-qt-dotgraph";
  version = "0.3.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_dotgraph/0.3.11-0.tar.gz";
    name = "0.3.11-0.tar.gz";
    sha256 = "c54d5f350840e358b0bfc662e83dd36ca7c6ceb2bb072a9d5d7b6f94ea8703d5";
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
