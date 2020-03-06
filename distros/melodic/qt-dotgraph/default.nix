
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-qt-dotgraph";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qt_gui_core-release/archive/release/melodic/qt_dotgraph/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "4de129ca721b664fa79136c817abbb2f8186a65b5eb5535fdffd9db00f6b4fff";
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
