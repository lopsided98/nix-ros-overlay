
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-navigation-local, laser-tilt-controller-filter, pr2-navigation-global, semantic-point-annotator, pr2-navigation-slam, pr2-navigation-self-filter, catkin, pr2-navigation-teleop, pr2-move-base, pr2-navigation-perception, pr2-navigation-config, dwa-local-planner }:
buildRosPackage {
  pname = "ros-melodic-pr2-navigation";
  version = "0.1.28-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/pr2_navigation/0.1.28-1.tar.gz";
    name = "0.1.28-1.tar.gz";
    sha256 = "d99a3c4a1cdff802f0fcc74407c5595b1c7549aee95093c4314b827217f8eb32";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-navigation-local laser-tilt-controller-filter semantic-point-annotator pr2-navigation-global pr2-navigation-slam pr2-navigation-self-filter pr2-navigation-teleop pr2-move-base pr2-navigation-perception pr2-navigation-config dwa-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_navigation stack holds common configuration options for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
