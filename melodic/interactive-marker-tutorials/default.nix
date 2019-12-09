
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, interactive-markers, catkin, tf, visualization-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-interactive-marker-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/melodic/interactive_marker_tutorials/0.10.3-0.tar.gz";
    name = "0.10.3-0.tar.gz";
    sha256 = "9871ffc4468273f1bd8f38a84e6dafa224057f8ebd89db86e0ab174ab46c06eb";
  };

  buildType = "catkin";
  buildInputs = [ roscpp tf visualization-msgs interactive-markers ];
  propagatedBuildInputs = [ interactive-markers tf visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The interactive_marker_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
