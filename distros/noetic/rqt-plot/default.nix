
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-gui-py-common, qwt-dependency, rosgraph, rostopic, rqt-gui, rqt-gui-py, rqt-py-common, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-plot";
  version = "0.4.13-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_plot-release/archive/release/noetic/rqt_plot/0.4.13-2.tar.gz";
    name = "0.4.13-2.tar.gz";
    sha256 = "f39e892b46c2c4997bababc291468d8da129d8d766a55a0875bf13ff6ffb98ce";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.matplotlib python3Packages.numpy python3Packages.rospkg qt-gui-py-common qwt-dependency rosgraph rostopic rqt-gui rqt-gui-py rqt-py-common std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
