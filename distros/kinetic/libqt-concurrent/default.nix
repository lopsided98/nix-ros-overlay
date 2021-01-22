
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-libqt-concurrent";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/kinetic/libqt_concurrent/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "bfa4a1b4c44379dd44881d41b928f7a37d6b1620e60994b70829e964be6d6126";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-concurrent metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United States Government Purpose" "SwRI Proprietary" ];
  };
}
