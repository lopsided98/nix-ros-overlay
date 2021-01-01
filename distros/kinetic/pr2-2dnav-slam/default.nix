
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-machine, pr2-navigation-perception, pr2-navigation-slam, pr2-navigation-teleop }:
buildRosPackage {
  pname = "ros-kinetic-pr2-2dnav-slam";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation_apps-release/archive/release/kinetic/pr2_2dnav_slam/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "9ec8418dcdbecb53490581053618d23cf5f9e24b4af3790f336ef92e673e5d31";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-machine pr2-navigation-perception pr2-navigation-slam pr2-navigation-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This application allows the PR2 to navigate autonomously while also building a map of its environment as it drives along.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
