
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-interactive-marker-tutorials";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/interactive_marker_tutorials/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "aeb1dd43c1cc86c20755d73500ee277b9bbe9355d6a5cae09427bbbbc47f5dcb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ interactive-markers roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The interactive_marker_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
