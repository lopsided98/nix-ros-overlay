
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, qwt6, rosbag, roscpp, rqt-gui, rqt-gui-cpp, variant-topic-tools }:
buildRosPackage {
  pname = "ros-melodic-rqt-multiplot";
  version = "0.0.10";

  src = fetchurl {
    url = "https://github.com/anybotics/rqt_multiplot_plugin-release/archive/release/melodic/rqt_multiplot/0.0.10-0.tar.gz";
    name = "0.0.10-0.tar.gz";
    sha256 = "92e975517c6726dcd8a9c73c658d524126d48716bd4db032cec61f641ce27ae8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase qwt6 rosbag roscpp rqt-gui rqt-gui-cpp variant-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_multiplot provides a GUI plugin for visualizing numeric values
    in multiple 2D plots using the Qwt plotting backend.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
