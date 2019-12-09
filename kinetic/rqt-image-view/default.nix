
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, sensor-msgs, geometry-msgs, rqt-gui-cpp, catkin, image-transport, cv-bridge, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-rqt-image-view";
  version = "0.4.13";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_image_view-release/archive/release/kinetic/rqt_image_view/0.4.13-0.tar.gz";
    name = "0.4.13-0.tar.gz";
    sha256 = "27615c3623254361328cf89fdb5c576618b9dff45cfed6221e493313f3cc3cf5";
  };

  buildType = "catkin";
  buildInputs = [ rqt-gui sensor-msgs geometry-msgs rqt-gui-cpp qt5.qtbase image-transport cv-bridge ];
  propagatedBuildInputs = [ rqt-gui sensor-msgs geometry-msgs rqt-gui-cpp image-transport cv-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_image_view provides a GUI plugin for displaying images using image_transport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
