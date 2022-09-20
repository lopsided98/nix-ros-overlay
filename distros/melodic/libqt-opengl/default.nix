
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-melodic-libqt-opengl";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/melodic/libqt_opengl/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "864a495c5dbc587baac58d0cbc2b936fbd18cdae8123e1c34bf005c881a29ca6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-opengl metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United-States-Government-Purpose" "SwRI-Proprietary" ];
  };
}
