
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, python-qt-binding, python3Packages, qt-dotgraph, qt-gui-py-common, rqt-graph, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rqt-dotgraph";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_dotgraph-release/archive/release/rolling/rqt_dotgraph/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "92fe5f98f00ec6e9ea898b53ec9ac06e93cf05d623baa58df92c457a6068923c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.pyqt5 python3Packages.pyside2 qt-dotgraph qt-gui-py-common rqt-graph rqt-gui rqt-gui-py std-msgs ];

  meta = {
    description = "rqt GUI plugin to visualize dot graphs.";
    license = with lib.licenses; [ lgpl3Only "CC0" ];
  };
}
