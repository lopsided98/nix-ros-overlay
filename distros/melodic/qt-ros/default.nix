
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-build, qt-create, qt-tutorials }:
buildRosPackage {
  pname = "ros-melodic-qt-ros";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/qt_ros-release/archive/release/melodic/qt_ros/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "40bab49c3f46bf6a0e3f0585e58e195ade2251fc3d69ca4c231157cef5b9ee09";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt-build qt-create qt-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple qt cmake build tools and master-chooser style application template.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
