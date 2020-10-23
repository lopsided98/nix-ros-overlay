
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-interactive, jsk-interactive-marker, jsk-interactive-test, jsk-rqt-plugins, jsk-rviz-plugins }:
buildRosPackage {
  pname = "ros-kinetic-jsk-visualization";
  version = "2.1.7-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_visualization/2.1.7-1.tar.gz";
    name = "2.1.7-1.tar.gz";
    sha256 = "b36c3af462bf376b1a8c12cb607cdf0649db61f391f18093cbfe0be7993312fa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jsk-interactive jsk-interactive-marker jsk-interactive-test jsk-rqt-plugins jsk-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains visualization package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
