
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, filters, geometry-msgs, laser-filters, laser-geometry, laser-tilt-controller-filter, message-filters, pcl-ros, pr2-machine, pr2-navigation-self-filter, roscpp, semantic-point-annotator, sensor-msgs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-pr2-navigation-perception";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/noetic/pr2_navigation_perception/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "0e26ff63d508ade9c80bf615bd9dd535dc25a600b816868fc6175e2566268501";
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
