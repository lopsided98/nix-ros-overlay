
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-visualization-marker-tutorials";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/visualization_marker_tutorials/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "403a4658fd70b1faa9b6650839f28751383d1cd57fd7787fc4bee4bf7171fe1c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The visulalization_marker_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
