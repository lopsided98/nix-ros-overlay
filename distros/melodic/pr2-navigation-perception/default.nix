
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, filters, geometry-msgs, laser-filters, laser-geometry, laser-tilt-controller-filter, message-filters, pcl-ros, pr2-machine, pr2-navigation-self-filter, roscpp, semantic-point-annotator, sensor-msgs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-pr2-navigation-perception";
  version = "0.1.28-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_navigation-release";
        rev = "release/melodic/pr2_navigation_perception/0.1.28-1";
        sha256 = "sha256-XEr+SjG93kHpUBcmiD2HT0HVkImS0/b2SvDDweCzpTs=";
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
