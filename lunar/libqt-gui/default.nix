
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-lunar-libqt-gui";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/lunar/libqt_gui/1.0.1-0.tar.gz;
    sha256 = "52795a5b7d3d8160944998ab7ce68ea82c9778e463c6bb043d42000f0ad46609";
  };

  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-gui metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United States Government Purpose" "SwRI Proprietary" ];
  };
}
