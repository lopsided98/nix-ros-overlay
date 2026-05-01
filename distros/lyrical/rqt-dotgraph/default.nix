
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, python-qt-binding, python3Packages, qt-dotgraph, qt-gui-py-common, rqt-graph, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rqt-dotgraph";
  version = "0.0.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_dotgraph-release/archive/release/lyrical/rqt_dotgraph/0.0.5-3.tar.gz";
    name = "0.0.5-3.tar.gz";
    sha256 = "e9d7526a64865f1e1aac053c193e97944cd0fe773a32e392dbe2cc5fdb89a2a4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.pyqt5 qt-dotgraph qt-gui-py-common rqt-graph rqt-gui rqt-gui-py std-msgs ];

  meta = {
    description = "rqt GUI plugin to visualize dot graphs.";
    license = with lib.licenses; [ lgpl3Only "CC0" ];
  };
}
