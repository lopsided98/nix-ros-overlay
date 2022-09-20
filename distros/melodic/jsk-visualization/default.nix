
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jsk-interactive, jsk-interactive-marker, jsk-interactive-test, jsk-rqt-plugins, jsk-rviz-plugins }:
buildRosPackage {
  pname = "ros-melodic-jsk-visualization";
  version = "2.1.8-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_visualization/2.1.8-1.tar.gz";
    name = "2.1.8-1.tar.gz";
    sha256 = "7493abb6f57c227f4b59d2d26e592a0424c0a66a587fdaa85cbb441588344260";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ jsk-interactive jsk-interactive-marker jsk-interactive-test jsk-rqt-plugins jsk-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains visualization package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
