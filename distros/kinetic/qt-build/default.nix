
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qt-build";
  version = "0.2.10";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/qt_ros-release/archive/release/kinetic/qt_build/0.2.10-0.tar.gz";
    name = "0.2.10-0.tar.gz";
    sha256 = "aebf7f934fad1536d302d753b51baf59c88b4fdbe90e046a8c952d51a1a38130";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Currently just maintains a cmake api for simplifying the building
    of qt apps within the ros framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
