
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, catkin, visualization-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-hector-marker-drawing";
  version = "0.3.5";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_marker_drawing/0.3.5-0.tar.gz;
    sha256 = "f7668e98788044b276c795338e1f59ea346b8c5dbc0bcba540632415d6526cca";
  };

  buildInputs = [ visualization-msgs roscpp eigen ];
  propagatedBuildInputs = [ visualization-msgs roscpp eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_marker_drawing provides convenience functions for easier publishing of visualization markers.'';
    #license = lib.licenses.BSD;
  };
}
