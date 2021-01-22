
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-libqt-opengl";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/kinetic/libqt_opengl/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "f8dcae631b99f6ea7ca7a31d2ddf40e2757405ca2ec4ee79e07a4ab42accf193";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-opengl metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United States Government Purpose" "SwRI Proprietary" ];
  };
}
