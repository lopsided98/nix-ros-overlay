
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, qt5, qwt6, rosbag, roscpp, rqt-gui, rqt-gui-cpp, variant-topic-tools }:
buildRosPackage {
  pname = "ros-noetic-rqt-multiplot";
  version = "0.0.12-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/rqt_multiplot_plugin-release/archive/release/noetic/rqt_multiplot/0.0.12-1.tar.gz";
    name = "0.0.12-1.tar.gz";
    sha256 = "586639723a44f5e5665a45b7acdf77ffbffff04a89256364a67668ed626430ac";
  };

  buildType = "catkin";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ qt5.qtbase qwt6 rosbag roscpp rqt-gui rqt-gui-cpp variant-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_multiplot provides a GUI plugin for visualizing numeric values in multiple 2D plots using the Qwt plotting backend.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
