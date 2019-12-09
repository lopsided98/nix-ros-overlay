
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-supported-robots, cob-navigation-config, catkin, rviz, move-base, roslaunch, dwa-local-planner }:
buildRosPackage {
  pname = "ros-kinetic-cob-navigation-local";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_navigation_local/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "40f88719fb1893cf57b15f809de3835908f02b41fe6aea6fa6db4ef26dfde37d";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-navigation-config rviz dwa-local-planner move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds config and launch files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a> in an odometric frame.
    No static map is needed for the move_base node in this configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
