
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, interactive-markers, catkin, tf, visualization-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-interactive-marker-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/kinetic/interactive_marker_tutorials/0.10.3-0.tar.gz";
    name = "0.10.3-0.tar.gz";
    sha256 = "538c214100b3c57362642b43903a64528777f92d038462d88dc6ca297afde123";
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
