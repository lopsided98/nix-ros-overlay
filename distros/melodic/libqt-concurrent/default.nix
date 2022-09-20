
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-melodic-libqt-concurrent";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/melodic/libqt_concurrent/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "0a2f5224aac3226ee88584ff99f9058aeb3cb4dd581fcf12772d3ab964d3ea19";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-concurrent metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United-States-Government-Purpose" "SwRI-Proprietary" ];
  };
}
