
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-build, qt-create, qt-tutorials }:
buildRosPackage {
  pname = "ros-kinetic-qt-ros";
  version = "0.2.10";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/qt_ros-release/archive/release/kinetic/qt_ros/0.2.10-0.tar.gz";
    name = "0.2.10-0.tar.gz";
    sha256 = "ec79e65c0d984924e42a13a7c3a18ccdd453db019fb315639123eb7b7cd87862";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-build qt-create qt-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple qt cmake build tools and master-chooser style application template.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
