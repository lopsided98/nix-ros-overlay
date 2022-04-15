
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, qt5 }:
buildRosPackage {
  pname = "ros-noetic-qt-advanced-docking";
  version = "3.8.2-r4";

  src = fetchurl {
    url = "https://github.com/tesseract-robotics-release/qt_advanced_docking_system-release/archive/release/noetic/qt_advanced_docking/3.8.2-4.tar.gz";
    name = "3.8.2-4.tar.gz";
    sha256 = "a93ef0a15575aa81018a59dc9f8946f85c957f7ee1c9b345d072a6fa47173432";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Qt Advanced Docking System lets you create customizable layouts using
    a full featured window docking system similar to what is found in many
    popular integrated development environments (IDEs) such as Visual Studio.'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
