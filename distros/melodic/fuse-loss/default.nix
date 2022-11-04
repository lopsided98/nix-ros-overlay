
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, fuse-core, libsForQt5, pluginlib, qt5, roscpp, roslint }:
buildRosPackage {
  pname = "ros-melodic-fuse-loss";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/fuse-release/archive/release/melodic/fuse_loss/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "6978e2c311fb7736a5afe5f373c7d2b178df364f4f9745eb15dd7b25956002f7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ libsForQt5.qwt qt5.qtbase roslint ];
  propagatedBuildInputs = [ ceres-solver fuse-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fuse_loss package provides a set of commonly used loss functions, such as the basic ones provided by Ceres.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
