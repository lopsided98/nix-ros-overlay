
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, cob-navigation-global, catkin, cob-mapping-slam, rviz, cob-supported-robots, cob-navigation-config }:
buildRosPackage {
  pname = "ros-kinetic-cob-navigation-slam";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_navigation_slam/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "bf8eda8258cfe8b7016a2a856665092ca2dc4d9af59c1b9d09d9d6e5b9647ca3";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-mapping-slam cob-navigation-config rviz cob-navigation-global ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for running  <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a> with the  <a href="http://ros.org/wiki/gmapping">gmapping</a> slam package of ROS. It further provides the usual navigation functionalities as provided by the <a href="http://ros.org/wiki/move_base">move_base</a> node.'';
    license = with lib.licenses; [ asl20 ];
  };
}
