
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-navigation-config, catkin, move-base, dwa-local-planner, rviz, cob-supported-robots, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-cob-navigation-local";
  version = "0.6.8-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_navigation_local/0.6.8-1.tar.gz;
    sha256 = "cc23203a1c418f921e3ccd70f2dda1135847da9b94862d7cd9dffed9c187b029";
  };

  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ dwa-local-planner cob-navigation-config rviz move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds config and launch files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a> in an odometric frame.
    No static map is needed for the move_base node in this configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
