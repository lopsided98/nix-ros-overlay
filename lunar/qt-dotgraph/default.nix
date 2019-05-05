
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-qt-dotgraph";
  version = "0.3.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/qt_gui_core-release/archive/release/lunar/qt_dotgraph/0.3.11-0.tar.gz;
    sha256 = "369431a1c8c6ee432b58d62d5a723cdeac2c9fe9326e33fc9cc58c25ab650474";
  };

  checkInputs = [ pythonPackages.pygraphviz ];
  propagatedBuildInputs = [ pythonPackages.pydot python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt_dotgraph provides helpers to work with dot graphs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
