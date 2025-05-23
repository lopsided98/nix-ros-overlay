
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, image-transport, python3Packages, qt5, rqt-gui, rqt-gui-cpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-image-view";
  version = "0.4.19-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_image_view-release/archive/release/noetic/rqt_image_view/0.4.19-1.tar.gz";
    name = "0.4.19-1.tar.gz";
    sha256 = "674d68cb450fb02685a5e954e3d69a01dda627efe516448e5963f36323bd5183";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools qt5.qtbase ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-transport rqt-gui rqt-gui-cpp sensor-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_image_view provides a GUI plugin for displaying images using image_transport.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
