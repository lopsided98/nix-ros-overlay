
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-visualization-marker-tutorials";
  version = "0.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/visualization_marker_tutorials/0.11.2-1.tar.gz";
    name = "0.11.2-1.tar.gz";
    sha256 = "bc1f28f6fe9fba6e1763390b72f1a5ae41ddf5c70c6b464662e22e1012e21c29";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The visulalization_marker_tutorials package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
