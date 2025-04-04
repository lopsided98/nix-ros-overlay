
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-interactive, jsk-interactive-marker, jsk-interactive-test, jsk-rqt-plugins, jsk-rviz-plugins }:
buildRosPackage {
  pname = "ros-noetic-jsk-visualization";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/noetic/jsk_visualization/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "21066f812ac24b381b5db4f357ac3540e004c5d3b0a43cc2d41171cf7022e30a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ jsk-interactive jsk-interactive-marker jsk-interactive-test jsk-rqt-plugins jsk-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>Metapackage that contains visualization package for jsk-ros-pkg</p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
