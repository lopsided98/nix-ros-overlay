
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-kinetic-librviz-tutorial";
  version = "0.10.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/kinetic/librviz_tutorial/0.10.5-1.tar.gz";
    name = "0.10.5-1.tar.gz";
    sha256 = "2d459f808d11c76ff9fbd67aeb3d85b308b020f3c802b5dce2e2ef6a64fdfc57";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorial showing how to compile your own C++ program with RViz displays and features.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
