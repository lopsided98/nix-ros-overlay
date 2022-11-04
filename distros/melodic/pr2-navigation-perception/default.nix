
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, filters, geometry-msgs, laser-filters, laser-geometry, laser-tilt-controller-filter, message-filters, pcl-ros, pr2-machine, pr2-navigation-self-filter, roscpp, semantic-point-annotator, sensor-msgs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-pr2-navigation-perception";
  version = "0.1.28-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/pr2_navigation_perception/0.1.28-1.tar.gz";
    name = "0.1.28-1.tar.gz";
    sha256 = "a9280acbedabad691bea60b8c18e5230cf267c6714b4f9137ec0d15f77ff9956";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure filters geometry-msgs laser-filters laser-geometry laser-tilt-controller-filter message-filters pcl-ros pr2-machine pr2-navigation-self-filter roscpp semantic-point-annotator sensor-msgs tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds navigation-specific sensor configuration options and launch files for the PR2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
