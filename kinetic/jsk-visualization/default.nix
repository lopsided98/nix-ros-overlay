
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-rqt-plugins, jsk-interactive-test, catkin, jsk-rviz-plugins, jsk-interactive-marker, jsk-interactive }:
buildRosPackage {
  pname = "ros-kinetic-jsk-visualization";
  version = "2.1.5";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_visualization/2.1.5-0.tar.gz;
    sha256 = "6176c631ecbccbc6cac8ac4c7cff6f49d01b96c0c01bb8a7a674908a125ecfea";
  };

  propagatedBuildInputs = [ jsk-rqt-plugins jsk-interactive-test jsk-rviz-plugins jsk-interactive-marker jsk-interactive ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains visualization package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
