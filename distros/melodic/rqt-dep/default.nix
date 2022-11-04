
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt-dotgraph, qt-gui, qt-gui-py-common, rqt-graph, rqt-gui-py }:
buildRosPackage {
  pname = "ros-melodic-rqt-dep";
  version = "0.4.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_dep-release/archive/release/melodic/rqt_dep/0.4.9-0.tar.gz";
    name = "0.4.9-0.tar.gz";
    sha256 = "7fa60310716f75eb444c3f45578111826f1e2bcdc092a1a5b530bfef04b8fb7a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg qt-dotgraph qt-gui qt-gui-py-common rqt-graph rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_dep provides a GUI plugin for visualizing the ROS dependency graph.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
