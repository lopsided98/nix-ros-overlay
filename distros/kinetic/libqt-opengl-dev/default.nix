
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-libqt-opengl-dev";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/kinetic/libqt_opengl_dev/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "4f5d48e6cc45407922151d337ce5898f71819dab09343eaedc4954fc17495df4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-opengl metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United States Government Purpose" "SwRI Proprietary" ];
  };
}
