
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-navigation-config, cob-supported-robots, dwa-local-planner, move-base, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-melodic-cob-navigation-local";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_navigation_local/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "0997db3825bcdc36ceed01868d5f491b77eaf5597f47142db292ff8d0058b4a1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-navigation-config dwa-local-planner move-base rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds config and launch files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a> in an odometric frame.
    No static map is needed for the move_base node in this configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
