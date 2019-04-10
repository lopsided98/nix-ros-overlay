
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-lunar-libqt-widgets";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/lunar/libqt_widgets/1.0.1-0.tar.gz;
    sha256 = "77c8d959f15648a65f0c0235ecd88b11caa62312a9892be2dac0bff9390c8b52";
  };

  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-widgets metapackage supporting qt4 and qt5'';
    #license = lib.licenses.United States Government Purpose;
  };
}
