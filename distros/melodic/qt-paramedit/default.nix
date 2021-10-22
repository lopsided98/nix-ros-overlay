
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qt-paramedit";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/dornhege/rqt_paramedit-release/archive/release/melodic/qt_paramedit/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "5d12d8619f12fb8a6c4490bfdc556e0ba4d8a93458abf1f9950876288913164a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A GUI application for viewing and editing ROS parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
