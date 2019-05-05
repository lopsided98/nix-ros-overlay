
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-lunar-libqt-core";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/lunar/libqt_core/1.0.1-0.tar.gz;
    sha256 = "710ebf2a7108155875d5f182c287065962caf7fb7680f70dddeb43fc1b7208cd";
  };

  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-core metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United States Government Purpose" "SwRI Proprietary" ];
  };
}
