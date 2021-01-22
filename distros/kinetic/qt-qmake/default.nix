
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-qt-qmake";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/kinetic/qt_qmake/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "dda6c2d7be11d3c13144151cff07262aea06579892a57c64fb733cb29d85fffd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''qt*-qmake metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United States Government Purpose" "SwRI Proprietary" ];
  };
}
