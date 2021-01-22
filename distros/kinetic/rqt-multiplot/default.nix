
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, qwt6, rosbag, roscpp, rqt-gui, rqt-gui-cpp, variant-topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-rqt-multiplot";
  version = "0.0.10";

  src = fetchurl {
    url = "https://github.com/anybotics/rqt_multiplot_plugin-release/archive/release/kinetic/rqt_multiplot/0.0.10-0.tar.gz";
    name = "0.0.10-0.tar.gz";
    sha256 = "8609de1db057f16d19ba9097a5022e0551f29f20b4e185a154e5fa2b09c3de0e";
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
