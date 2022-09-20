
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-melodic-libqt-gui";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/melodic/libqt_gui/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "a3fc2fc444b1b7b9d685e693868c3b8652420097c949bdd759f68f1f802fb903";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-gui metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United-States-Government-Purpose" "SwRI-Proprietary" ];
  };
}
