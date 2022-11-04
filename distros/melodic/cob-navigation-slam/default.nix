
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-mapping-slam, cob-navigation-config, cob-navigation-global, cob-supported-robots, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-melodic-cob-navigation-slam";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_navigation_slam/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "e96ad95d7167f0e1c1a07ca019eb4b7a7813d562629793f6cd709dfeb43eaae2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-mapping-slam cob-navigation-config cob-navigation-global rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for running  <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a> with the  <a href="http://ros.org/wiki/gmapping">gmapping</a> slam package of ROS. It further provides the usual navigation functionalities as provided by the <a href="http://ros.org/wiki/move_base">move_base</a> node.'';
    license = with lib.licenses; [ asl20 ];
  };
}
