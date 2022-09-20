
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-melodic-libqt-opengl-dev";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/melodic/libqt_opengl_dev/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "19c8c400ac8674d84b2e8d6e1f0fbdb0f3a723f8d4a7700c1a12affb3c5e19fe";
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
