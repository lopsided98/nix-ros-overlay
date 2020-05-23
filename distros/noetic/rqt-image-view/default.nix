
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, image-transport, qt5, rqt-gui, rqt-gui-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-image-view";
  version = "0.4.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_image_view-release/archive/release/noetic/rqt_image_view/0.4.15-1.tar.gz";
    name = "0.4.15-1.tar.gz";
    sha256 = "7b3c42f5fbe4d50b869825666df85f8733e973a84c8192354ef15f8a99817c76";
  };

  buildType = "catkin";
  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-transport rqt-gui rqt-gui-cpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_image_view provides a GUI plugin for displaying images using image_transport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
