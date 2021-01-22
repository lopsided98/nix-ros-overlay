
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-libqt-dev";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/kinetic/libqt_dev/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "10cd4e9ab12b8e6dfd376f4f6c9e3e9e76471e053dcc3376a2f89f581b4e1b6d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-dev metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United States Government Purpose" "SwRI Proprietary" ];
  };
}
