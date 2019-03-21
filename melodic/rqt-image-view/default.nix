
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, rqt-gui, cv-bridge, catkin, qt5, rqt-gui-cpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-image-view";
  version = "0.4.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_image_view-release/archive/release/melodic/rqt_image_view/0.4.13-0.tar.gz;
    sha256 = "adbd60be7c1f3517942285d3bcb166f838d362e88a910192bdaa35dc193126e3";
  };

  propagatedBuildInputs = [ cv-bridge rqt-gui-cpp image-transport sensor-msgs rqt-gui geometry-msgs ];
  nativeBuildInputs = [ catkin cv-bridge rqt-gui-cpp geometry-msgs image-transport sensor-msgs rqt-gui qt5.qtbase ];

  meta = {
    description = ''rqt_image_view provides a GUI plugin for displaying images using image_transport.'';
    #license = lib.licenses.BSD;
  };
}
