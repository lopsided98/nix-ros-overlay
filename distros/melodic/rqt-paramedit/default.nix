
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-paramedit, qt5, roscpp, rqt-gui, rqt-gui-cpp }:
buildRosPackage {
  pname = "ros-melodic-rqt-paramedit";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/dornhege/rqt_paramedit-release/archive/release/melodic/rqt_paramedit/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "41ea3a8828c47d3be448920e3255e9340447a44c84f63b7f4df615d197807f7f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-paramedit qt5.qtbase roscpp rqt-gui rqt-gui-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_paramedit - a rqt plugin for editing parameters using qt_paramedit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
