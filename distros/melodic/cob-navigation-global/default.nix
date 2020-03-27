
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, cob-default-env-config, cob-linear-nav, cob-navigation-config, cob-scan-unifier, cob-supported-robots, dwa-local-planner, map-server, move-base, roslaunch, rviz, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-cob-navigation-global";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_navigation_global/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "83858aeb0feba6d1cf1e0d823fab1d58b7ac10d9081edc3214c349ac6384c4ec";
  };

  buildType = "catkin";
  checkInputs = [ cob-default-env-config cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ amcl cob-default-env-config cob-linear-nav cob-navigation-config cob-scan-unifier dwa-local-planner map-server move-base rviz topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds config and launch files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a>.
    The move_base node is configured to run over a pre-specified static map.'';
    license = with lib.licenses; [ asl20 ];
  };
}
