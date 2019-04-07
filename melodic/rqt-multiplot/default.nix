
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, rqt-gui, catkin, rqt-gui-cpp, qt5, qwt6, variant-topic-tools, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rqt-multiplot";
  version = "0.0.10";

  src = fetchurl {
    url = https://github.com/anybotics/rqt_multiplot_plugin-release/archive/release/melodic/rqt_multiplot/0.0.10-0.tar.gz;
    sha256 = "92e975517c6726dcd8a9c73c658d524126d48716bd4db032cec61f641ce27ae8";
  };

  buildInputs = [ roscpp rqt-gui-cpp qwt6 variant-topic-tools rosbag rqt-gui qt5.qtbase ];
  propagatedBuildInputs = [ roscpp rqt-gui-cpp qwt6 variant-topic-tools rosbag rqt-gui qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_multiplot provides a GUI plugin for visualizing numeric values
    in multiple 2D plots using the Qwt plotting backend.'';
    #license = lib.licenses.GNU Lesser General Public License (LGPL);
  };
}
