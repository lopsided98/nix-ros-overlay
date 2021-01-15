
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, rviz }:
buildRosPackage {
  pname = "ros-kinetic-rviz-plugin-tutorials";
  version = "0.10.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/kinetic/rviz_plugin_tutorials/0.10.5-1.tar.gz";
    name = "0.10.5-1.tar.gz";
    sha256 = "c5473143e9c8b4674397e415525c2505b4282e413ed1d870c23cec9f385de36a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorials showing how to write plugins for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
