
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, rviz }:
buildRosPackage {
  pname = "ros-noetic-rviz-plugin-tutorials";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/rviz_plugin_tutorials/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "2a8d6d52961928fd5da2cf8203bfbf658ec2df5df6f9ec3c0f055a4358f05e0e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorials showing how to write plugins for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
