
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, catkin, cob-navigation-global }:
buildRosPackage {
  pname = "ros-kinetic-cob-mapping-slam";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_mapping_slam/0.6.7-0.tar.gz;
    sha256 = "11af1de4243a7da25ca20322031f0b9860d5f7474029f1f951feec9ddd25edfa";
  };

  propagatedBuildInputs = [ gmapping cob-navigation-global ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_mapping_slam holds launch files for running SLAM using the <a href="http://ros.org/wiki/gmapping">gmapping</a> package.'';
    #license = lib.licenses.Apache 2.0;
  };
}
