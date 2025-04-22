
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-librviz-tutorial";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/librviz_tutorial/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "f6c9d24390b03b2647ea7f82c2dd7e00153a78f02a038c162b6cbc6e8a5d27bf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Tutorial showing how to compile your own C++ program with RViz displays and features.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
