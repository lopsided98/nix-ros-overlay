
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, interactive-markers, visualization-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-interactive-marker-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/visualization_tutorials-release/archive/release/kinetic/interactive_marker_tutorials/0.10.3-0.tar.gz;
    sha256 = "538c214100b3c57362642b43903a64528777f92d038462d88dc6ca297afde123";
  };

  propagatedBuildInputs = [ roscpp tf interactive-markers visualization-msgs ];
  nativeBuildInputs = [ interactive-markers visualization-msgs tf catkin roscpp ];

  meta = {
    description = ''The interactive_marker_tutorials package'';
    #license = lib.licenses.BSD;
  };
}
