
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-navigation-config, cob-supported-robots, dwa-local-planner, move-base, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-kinetic-cob-navigation-local";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_navigation_local/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "c76b4b4f9dd99e3ac84daf3da2fc607c08ceabab4d436c5ef7a3c5a9b130dd17";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-navigation-config dwa-local-planner move-base rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds config and launch files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a> in an odometric frame.
    No static map is needed for the move_base node in this configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
