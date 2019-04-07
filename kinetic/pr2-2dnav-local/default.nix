
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-navigation-local, catkin, pr2-navigation-perception, pr2-navigation-teleop, pr2-machine }:
buildRosPackage {
  pname = "ros-kinetic-pr2-2dnav-local";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_navigation_apps-release/archive/release/kinetic/pr2_2dnav_local/1.0.2-0.tar.gz;
    sha256 = "21e0c558d6483007164e81cfeed0ee6b7a54db4368942ef47078d15e13239f5f";
  };

  buildInputs = [ pr2-navigation-local pr2-navigation-teleop pr2-machine pr2-navigation-perception ];
  propagatedBuildInputs = [ pr2-navigation-local pr2-navigation-teleop pr2-machine pr2-navigation-perception ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This application allows the PR2 to navigate autonomously in an odometric frame.'';
    #license = lib.licenses.BSD;
  };
}
