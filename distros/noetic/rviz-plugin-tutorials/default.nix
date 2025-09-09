
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, rviz }:
buildRosPackage {
  pname = "ros-noetic-rviz-plugin-tutorials";
  version = "0.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/rviz_plugin_tutorials/0.11.2-1.tar.gz";
    name = "0.11.2-1.tar.gz";
    sha256 = "da5f66a1fd59b6075566aa038b3feed8ce3b527e2c32d2f8f579aef3566f9d2c";
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
