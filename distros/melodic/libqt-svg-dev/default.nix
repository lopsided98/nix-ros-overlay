
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-melodic-libqt-svg-dev";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/melodic/libqt_svg_dev/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "9650990b4fed04c6f124e9fbd4c007937351ea9b3fbb924e36a6c58aeb89cf95";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt5.qtsvg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-svg-dev metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United-States-Government-Purpose" "SwRI-Proprietary" ];
  };
}
