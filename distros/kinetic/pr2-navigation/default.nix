
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dwa-local-planner, laser-tilt-controller-filter, pr2-move-base, pr2-navigation-config, pr2-navigation-global, pr2-navigation-local, pr2-navigation-perception, pr2-navigation-self-filter, pr2-navigation-slam, pr2-navigation-teleop, semantic-point-annotator }:
buildRosPackage {
  pname = "ros-kinetic-pr2-navigation";
  version = "0.1.28";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/pr2_navigation/0.1.28-0.tar.gz";
    name = "0.1.28-0.tar.gz";
    sha256 = "ab2ed2e87b85c89b908c4ed21344009a127c0e745708307628a622301d42f5aa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dwa-local-planner laser-tilt-controller-filter pr2-move-base pr2-navigation-config pr2-navigation-global pr2-navigation-local pr2-navigation-perception pr2-navigation-self-filter pr2-navigation-slam pr2-navigation-teleop semantic-point-annotator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_navigation stack holds common configuration options for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
