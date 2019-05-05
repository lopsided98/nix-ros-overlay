
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-lunar-libqt-network";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/lunar/libqt_network/1.0.1-0.tar.gz;
    sha256 = "6b58351a85176258965c7ee29d09a71d285dd049e22a838bac9208322cdb9bbe";
  };

  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-network metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United States Government Purpose" "SwRI Proprietary" ];
  };
}
