
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-lunar-libqt-svg-dev";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/lunar/libqt_svg_dev/1.0.1-0.tar.gz;
    sha256 = "16768b38400de05fe97cd65af3a603619f4d549f60d02c19573bd135f623bbff";
  };

  buildInputs = [ qt5.qtsvg ];
  propagatedBuildInputs = [ qt5.qtsvg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-svg-dev metapackage supporting qt4 and qt5'';
    #license = lib.licenses.United States Government Purpose;
  };
}
