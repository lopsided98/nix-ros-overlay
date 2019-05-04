
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-rviz-plugin-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/visualization_tutorials-release/archive/release/kinetic/rviz_plugin_tutorials/0.10.3-0.tar.gz;
    sha256 = "76998d671893d077f5fe8a074f9c8bcef142956e81a5902250509a4d061d598a";
  };

  buildInputs = [ rviz qt5.qtbase ];
  propagatedBuildInputs = [ rviz qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tutorials showing how to write plugins for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
