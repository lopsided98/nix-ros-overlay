
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-navigation-local, pr2-navigation-global, pr2-navigation-config, semantic-point-annotator, pr2-navigation-slam, catkin, laser-tilt-controller-filter, pr2-navigation-perception, dwa-local-planner, pr2-navigation-teleop, pr2-move-base, pr2-navigation-self-filter }:
buildRosPackage {
  pname = "ros-kinetic-pr2-navigation";
  version = "0.1.28";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/pr2_navigation/0.1.28-0.tar.gz;
    sha256 = "ab2ed2e87b85c89b908c4ed21344009a127c0e745708307628a622301d42f5aa";
  };

  propagatedBuildInputs = [ pr2-navigation-local pr2-navigation-global pr2-navigation-config semantic-point-annotator pr2-navigation-slam laser-tilt-controller-filter pr2-navigation-perception dwa-local-planner pr2-navigation-teleop pr2-move-base pr2-navigation-self-filter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_navigation stack holds common configuration options for running the'';
    #license = lib.licenses.BSD;
  };
}
