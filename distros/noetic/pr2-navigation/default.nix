
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dwa-local-planner, laser-tilt-controller-filter, pr2-move-base, pr2-navigation-config, pr2-navigation-global, pr2-navigation-local, pr2-navigation-perception, pr2-navigation-self-filter, pr2-navigation-slam, pr2-navigation-teleop, semantic-point-annotator }:
buildRosPackage {
  pname = "ros-noetic-pr2-navigation";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/noetic/pr2_navigation/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "32ecc115470f2967e47b0f707f075e4e60fbb1c762f1adb9f57ae412e846d21f";
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
