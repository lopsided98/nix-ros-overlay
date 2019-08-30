
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, catkin, cob-navigation-global }:
buildRosPackage {
  pname = "ros-melodic-cob-mapping-slam";
  version = "0.6.8-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_mapping_slam/0.6.8-1.tar.gz;
    sha256 = "dd9ad4281ab761c03afbf4e9bc19ba6a258ed49558a6e7735043768f6f3f6b12";
  };

  propagatedBuildInputs = [ gmapping cob-navigation-global ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_mapping_slam holds launch files for running SLAM using the <a href="http://ros.org/wiki/gmapping">gmapping</a> package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
