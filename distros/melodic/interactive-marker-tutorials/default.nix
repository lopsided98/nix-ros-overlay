
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-interactive-marker-tutorials";
  version = "0.10.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/melodic/interactive_marker_tutorials/0.10.5-1.tar.gz";
    name = "0.10.5-1.tar.gz";
    sha256 = "fdc4a18af48d2edfa19927dd14db6a268edbe35652d1625d3e708f1bb7b0874b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ interactive-markers roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The interactive_marker_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
