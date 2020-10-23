
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-interactive, jsk-interactive-marker, jsk-interactive-test, jsk-rqt-plugins, jsk-rviz-plugins }:
buildRosPackage {
  pname = "ros-melodic-jsk-visualization";
  version = "2.1.7-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_visualization/2.1.7-1.tar.gz";
    name = "2.1.7-1.tar.gz";
    sha256 = "ecd65c057c6986e987d6c94c975314f816c9b98396c4540d91e9d692187d8db2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jsk-interactive jsk-interactive-marker jsk-interactive-test jsk-rqt-plugins jsk-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains visualization package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
