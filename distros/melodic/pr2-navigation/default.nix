
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dwa-local-planner, laser-tilt-controller-filter, pr2-move-base, pr2-navigation-config, pr2-navigation-global, pr2-navigation-local, pr2-navigation-perception, pr2-navigation-self-filter, pr2-navigation-slam, pr2-navigation-teleop, semantic-point-annotator }:
buildRosPackage {
  pname = "ros-melodic-pr2-navigation";
  version = "0.1.28-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/pr2_navigation/0.1.28-1.tar.gz";
    name = "0.1.28-1.tar.gz";
    sha256 = "d99a3c4a1cdff802f0fcc74407c5595b1c7549aee95093c4314b827217f8eb32";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dwa-local-planner laser-tilt-controller-filter pr2-move-base pr2-navigation-config pr2-navigation-global pr2-navigation-local pr2-navigation-perception pr2-navigation-self-filter pr2-navigation-slam pr2-navigation-teleop semantic-point-annotator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_navigation stack holds common configuration options for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
