
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-navigation-global, cob-supported-robots, gmapping, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-cob-mapping-slam";
  version = "0.6.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/noetic/cob_mapping_slam/0.6.12-1.tar.gz";
    name = "0.6.12-1.tar.gz";
    sha256 = "fa9715cf6d686b08d24e9fd971251f0a01a7911b88ada1b58d31231744fcf816";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-navigation-global gmapping ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_mapping_slam holds launch files for running SLAM using the <a href="http://ros.org/wiki/gmapping">gmapping</a> package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
