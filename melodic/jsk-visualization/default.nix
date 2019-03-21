
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-rqt-plugins, jsk-interactive-test, catkin, jsk-rviz-plugins, jsk-interactive-marker, jsk-interactive }:
buildRosPackage {
  pname = "ros-melodic-jsk-visualization";
  version = "2.1.5";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_visualization/2.1.5-0.tar.gz;
    sha256 = "6a77306292fe2644e5cd6ad9df30e442aa904f920bc373a0b8b5ff9a2d0e0411";
  };

  propagatedBuildInputs = [ jsk-rviz-plugins jsk-rqt-plugins jsk-interactive-marker jsk-interactive-test jsk-interactive ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains visualization package for jsk-ros-pkg</p>'';
    #license = lib.licenses.BSD;
  };
}
