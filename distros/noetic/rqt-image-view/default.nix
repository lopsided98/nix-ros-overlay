
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, image-transport, python3Packages, qt5, rqt-gui, rqt-gui-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-image-view";
  version = "0.4.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_image_view-release/archive/release/noetic/rqt_image_view/0.4.17-1.tar.gz";
    name = "0.4.17-1.tar.gz";
    sha256 = "a7919c7d7bed79836ccb9a64264145cc0d3faa78f84f252404c6ab3df70426ab";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools qt5.qtbase ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-transport rqt-gui rqt-gui-cpp sensor-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''rqt_image_view provides a GUI plugin for displaying images using image_transport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
