
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-dotgraph, qt-gui, qt-gui-py-common, rqt-graph, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-dep";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_dep-release/archive/release/noetic/rqt_dep/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "173543b28fd652b17aa90d4be483382b1fb6a2c7cc842fa58c3151293eccc445";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg qt-dotgraph qt-gui qt-gui-py-common rqt-graph rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_dep provides a GUI plugin for visualizing the ROS dependency graph.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
