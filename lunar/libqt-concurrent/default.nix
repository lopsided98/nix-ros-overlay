
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-lunar-libqt-concurrent";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/lunar/libqt_concurrent/1.0.1-0.tar.gz;
    sha256 = "051b229efda42910986866b5c66a1d89349c3ea004625ea6e6fbdb9047a666f9";
  };

  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-concurrent metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United States Government Purpose" "SwRI Proprietary" ];
  };
}
