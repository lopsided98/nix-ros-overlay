
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-interactive-marker-tutorials";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/interactive_marker_tutorials/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "dae59c68ac8133827a1b442c85a67b55f9a1fac9466d7df0642b4159c088574c";
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
