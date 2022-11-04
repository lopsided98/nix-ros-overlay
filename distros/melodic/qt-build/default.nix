
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-qt-build";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/qt_ros-release/archive/release/melodic/qt_build/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "8efbd3e986cd99b3cd997e6dc4bd94babe0885f4bcc5c4571b5558ad5273c98e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Currently just maintains a cmake api for simplifying the building
    of qt apps within the ros framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
