
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-lunar-libqt-opengl-dev";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/lunar/libqt_opengl_dev/1.0.1-0.tar.gz;
    sha256 = "51da1787cdcface3e016804388e7ffa35d99f20ea34e0d18e64619a3150a11a1";
  };

  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-opengl metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United States Government Purpose" "SwRI Proprietary" ];
  };
}
