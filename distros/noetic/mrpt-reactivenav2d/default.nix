
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, mrpt-libnav, mrpt-libros-bridge, mrpt-msgs, nav-msgs, roscpp, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-reactivenav2d";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_reactivenav2d/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "79569c3d2ead21c7c01df6c452d53f867be753d3682dba985ffb1339529b8854";
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
