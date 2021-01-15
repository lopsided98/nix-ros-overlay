
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-libqt-svg-dev";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/kinetic/libqt_svg_dev/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "41a335a0c5c684d414b347432d5c32d2b722dc9b966d2702a334032dd23f83e8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtsvg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libqt-svg-dev metapackage supporting qt4 and qt5'';
    license = with lib.licenses; [ "United States Government Purpose" "SwRI Proprietary" ];
  };
}
