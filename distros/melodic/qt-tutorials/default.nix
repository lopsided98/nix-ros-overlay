
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, qt-build, qt4, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-qt-tutorials";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/qt_ros-release/archive/release/melodic/qt_tutorials/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "95d2b5fca0298fc52e2c506d08e83c4a43b055058e2a9166ec1606c4058238be";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime qt-build qt4 roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example qt programs, generated from code similar to that used by the 
     roscreate-qt-pkg script and styled on roscpp_tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
