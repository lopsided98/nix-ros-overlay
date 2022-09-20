
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-navigation-global, cob-supported-robots, gmapping, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-cob-mapping-slam";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_mapping_slam/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "3800c528217deab7559398d3ee66748b3df1b697fe51de66603b4adce6a63f95";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-navigation-global gmapping ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_mapping_slam holds launch files for running SLAM using the <a href="http://ros.org/wiki/gmapping">gmapping</a> package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
