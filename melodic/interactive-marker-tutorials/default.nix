
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, interactive-markers, visualization-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-interactive-marker-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/visualization_tutorials-release/archive/release/melodic/interactive_marker_tutorials/0.10.3-0.tar.gz;
    sha256 = "9871ffc4468273f1bd8f38a84e6dafa224057f8ebd89db86e0ab174ab46c06eb";
  };

  buildInputs = [ roscpp tf interactive-markers visualization-msgs ];
  propagatedBuildInputs = [ roscpp tf interactive-markers visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The interactive_marker_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
