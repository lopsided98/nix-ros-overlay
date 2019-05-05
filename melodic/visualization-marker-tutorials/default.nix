
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, catkin, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-visualization-marker-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/visualization_tutorials-release/archive/release/melodic/visualization_marker_tutorials/0.10.3-0.tar.gz;
    sha256 = "2e5bc745ab400757dee1666b765a9aef01a4d9b5f062d837827aee336bdbb68d";
  };

  buildInputs = [ visualization-msgs roscpp ];
  propagatedBuildInputs = [ visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The visulalization_marker_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
