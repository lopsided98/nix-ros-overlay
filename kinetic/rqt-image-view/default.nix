
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, rqt-gui, cv-bridge, catkin, qt5, rqt-gui-cpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rqt-image-view";
  version = "0.4.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_image_view-release/archive/release/kinetic/rqt_image_view/0.4.13-0.tar.gz;
    sha256 = "27615c3623254361328cf89fdb5c576618b9dff45cfed6221e493313f3cc3cf5";
  };

  propagatedBuildInputs = [ cv-bridge rqt-gui-cpp image-transport sensor-msgs rqt-gui geometry-msgs ];
  nativeBuildInputs = [ catkin cv-bridge rqt-gui-cpp geometry-msgs image-transport sensor-msgs rqt-gui qt5.qtbase ];

  meta = {
    description = ''rqt_image_view provides a GUI plugin for displaying images using image_transport.'';
    #license = lib.licenses.BSD;
  };
}
