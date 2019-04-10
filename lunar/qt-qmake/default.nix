
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-lunar-qt-qmake";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/lunar/qt_qmake/1.0.1-0.tar.gz;
    sha256 = "5c147f8a12869ddc0f5b936699b686c6e49d5717d8058625b1bee8fff21530d7";
  };

  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt*-qmake metapackage supporting qt4 and qt5'';
    #license = lib.licenses.United States Government Purpose;
  };
}
