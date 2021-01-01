
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-navigation-global, cob-supported-robots, gmapping, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-cob-mapping-slam";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_mapping_slam/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "01d4d5e1fc5f9f19fbef5cf564f6af7adc25da187c13817316c3224844f68412";
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
