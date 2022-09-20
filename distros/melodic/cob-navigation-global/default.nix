
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, cob-default-env-config, cob-linear-nav, cob-navigation-config, cob-scan-unifier, cob-supported-robots, dwa-local-planner, map-server, move-base, roslaunch, rviz, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-cob-navigation-global";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_navigation_global/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "4c719949bcb1accc76b18e1b190c3b53e127af23f0dfc2630b31e5857ba73fde";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ cob-default-env-config cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ amcl cob-default-env-config cob-linear-nav cob-navigation-config cob-scan-unifier dwa-local-planner map-server move-base rviz topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds config and launch files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a>.
    The move_base node is configured to run over a pre-specified static map.'';
    license = with lib.licenses; [ asl20 ];
  };
}
