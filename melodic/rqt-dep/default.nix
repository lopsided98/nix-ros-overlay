
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, pythonPackages, rqt-graph, qt-gui, qt-dotgraph, qt-gui-py-common, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-dep";
  version = "0.4.9";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_dep-release/archive/release/melodic/rqt_dep/0.4.9-0.tar.gz;
    sha256 = "7fa60310716f75eb444c3f45578111826f1e2bcdc092a1a5b530bfef04b8fb7a";
  };

  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-graph qt-gui qt-dotgraph qt-gui-py-common python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_dep provides a GUI plugin for visualizing the ROS dependency graph.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
