
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-interactive-marker-tutorials";
  version = "0.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/interactive_marker_tutorials/0.11.2-1.tar.gz";
    name = "0.11.2-1.tar.gz";
    sha256 = "5839aec3fd14cf4cd62468f2ee84992a7752c4f973795990521e47f63b9b5ac4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ interactive-markers roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The interactive_marker_tutorials package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
