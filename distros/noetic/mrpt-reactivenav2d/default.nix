
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, mrpt-bridge, mrpt2, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-reactivenav2d";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_reactivenav2d/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "cf9a3bfeb2dd0cea18fc6285c63299860a3773b393b5ee3a808e69d0dfe8ba78";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure geometry-msgs mrpt-bridge mrpt2 roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Reactive navigation for 2D robots using MRPT navigation algorithms (TP-Space)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
