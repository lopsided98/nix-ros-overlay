
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-build }:
buildRosPackage {
  pname = "ros-melodic-qt-create";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/qt_ros-release/archive/release/melodic/qt_create/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "cec2e88476fc8894e4baa333e77479cd10b8c21938d751914127f3fdd20a2dea";
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
