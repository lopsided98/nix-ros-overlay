
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, rqt-gui, catkin, cv-bridge, qt5, rqt-gui-cpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-rqt-image-view";
  version = "0.4.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_image_view-release/archive/release/lunar/rqt_image_view/0.4.13-0.tar.gz;
    sha256 = "9f892b0bda9da46c781990102de021d99966aa05c714f37973832c674f0ed782";
  };

  buildInputs = [ image-transport sensor-msgs rqt-gui cv-bridge qt5.qtbase rqt-gui-cpp geometry-msgs ];
  propagatedBuildInputs = [ image-transport sensor-msgs rqt-gui cv-bridge rqt-gui-cpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_image_view provides a GUI plugin for displaying images using image_transport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
