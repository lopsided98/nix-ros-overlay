
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, rviz }:
buildRosPackage {
  pname = "ros-noetic-rviz-plugin-tutorials";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/rviz_plugin_tutorials/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "e3d5576f1ef6b477f59c4512184e2fd54f670f84dad799c434f3502502721293";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Tutorials showing how to write plugins for RViz.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
