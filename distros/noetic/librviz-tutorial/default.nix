
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-librviz-tutorial";
  version = "0.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/librviz_tutorial/0.11.2-1.tar.gz";
    name = "0.11.2-1.tar.gz";
    sha256 = "00f162652bc180e2f00520aeee05146dcd1903f44cb51c9bcfdc87f7c57ef763";
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
