
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, mrpt-libnav, mrpt-libros-bridge, mrpt-msgs, nav-msgs, roscpp, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-reactivenav2d";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_reactivenav2d/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "23445b377f0258c7a31710f6bb7d4f123ff361f93085bdeb0f22908d66996f97";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure geometry-msgs mrpt-libnav mrpt-libros-bridge mrpt-msgs nav-msgs roscpp tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Reactive navigation for 2D robots using MRPT navigation algorithms (TP-Space)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
