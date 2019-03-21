
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-navigation-config, catkin, move-base, dwa-local-planner, rviz, cob-supported-robots, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-cob-navigation-local";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_navigation_local/0.6.7-0.tar.gz;
    sha256 = "3866130052acf3d32538f6f7b1c53d6f9243829da60fd6ae91446be32e76b69a";
  };

  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ dwa-local-planner cob-navigation-config rviz move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds config and launch files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a> in an odometric frame.
    No static map is needed for the move_base node in this configuration.'';
    #license = lib.licenses.Apache 2.0;
  };
}
