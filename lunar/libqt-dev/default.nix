
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-lunar-libqt-dev";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/lunar/libqt_dev/1.0.1-0.tar.gz;
    sha256 = "9df51c09c32b9aa96594384460d576fc4c02571992773749e9f8485becf0ae67";
  };

  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-dev metapackage supporting qt4 and qt5'';
    #license = lib.licenses.United States Government Purpose;
  };
}
