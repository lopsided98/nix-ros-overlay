
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-supported-robots, cob-navigation-config, cob-scan-unifier, cob-default-env-config, map-server, catkin, rviz, move-base, topic-tools, amcl, roslaunch, dwa-local-planner, cob-linear-nav }:
buildRosPackage {
  pname = "ros-kinetic-cob-navigation-global";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_navigation_global/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "7dc122e6b08421a90a19f91986397351ba880657e30d65ecd9b3d251862f13f6";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots cob-default-env-config roslaunch ];
  propagatedBuildInputs = [ cob-navigation-config cob-scan-unifier map-server cob-default-env-config rviz move-base topic-tools amcl dwa-local-planner cob-linear-nav ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds config and launch files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a>.
    The move_base node is configured to run over a pre-specified static map.'';
    license = with lib.licenses; [ asl20 ];
  };
}
