
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, pythonPackages, rqt-graph, qt-gui, qt-dotgraph, qt-gui-py-common, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-rqt-dep";
  version = "0.4.9";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_dep-release/archive/release/lunar/rqt_dep/0.4.9-0.tar.gz;
    sha256 = "f808a91627188f256c7653fdefcb0b99230415257cb3f70ffdec560d273c9e4a";
  };

  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ rqt-gui-py qt-gui qt-dotgraph qt-gui-py-common python-qt-binding pythonPackages.rospkg rqt-graph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_dep provides a GUI plugin for visualizing the ROS dependency graph.'';
    #license = lib.licenses.BSD;
  };
}
