
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, semantic-point-annotator, tf, sensor-msgs, catkin, message-filters, topic-tools, laser-tilt-controller-filter, laser-geometry, laser-filters, pcl-ros, pr2-machine, dynamic-reconfigure, roscpp, pr2-navigation-self-filter, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-navigation-perception";
  version = "0.1.28";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/pr2_navigation_perception/0.1.28-0.tar.gz;
    sha256 = "9e08b777d996bbd1e8318fcb1185717840355402b1745fcb5e7a95496a8fe66d";
  };

  propagatedBuildInputs = [ filters semantic-point-annotator geometry-msgs sensor-msgs topic-tools message-filters roscpp laser-tilt-controller-filter laser-geometry laser-filters dynamic-reconfigure pr2-machine tf pcl-ros pr2-navigation-self-filter ];
  nativeBuildInputs = [ filters semantic-point-annotator geometry-msgs sensor-msgs topic-tools message-filters catkin roscpp laser-tilt-controller-filter laser-geometry laser-filters dynamic-reconfigure pr2-machine tf pcl-ros pr2-navigation-self-filter ];

  meta = {
    description = ''This package holds navigation-specific sensor configuration options and launch files for the PR2.'';
    #license = lib.licenses.BSD;
  };
}
