
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-build }:
buildRosPackage {
  pname = "ros-kinetic-qt-create";
  version = "0.2.10";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/qt_ros-release/archive/release/kinetic/qt_create/0.2.10-0.tar.gz";
    name = "0.2.10-0.tar.gz";
    sha256 = "a7d457980e0d856c7b627bf527a1a5ce1f4a862d77d8862018d8c4d4af8898d4";
  };

  buildType = "catkin";
  buildInputs = [ qt-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides templates and scripts for creating qt-ros packages
     (similar to roscreate-pkg).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
