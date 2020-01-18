
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, image-transport, qt5, rqt-gui, rqt-gui-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-image-view";
  version = "0.4.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_image_view-release/archive/release/melodic/rqt_image_view/0.4.14-1.tar.gz";
    name = "0.4.14-1.tar.gz";
    sha256 = "aa8786eb047273139cba8c1a2fe4ea2214060385494e743ee777b41ff155fd26";
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
