
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, catkin, cob-navigation-global }:
buildRosPackage {
  pname = "ros-kinetic-cob-mapping-slam";
  version = "0.6.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_mapping_slam/0.6.8-1.tar.gz";
    name = "0.6.8-1.tar.gz";
    sha256 = "9b783a0a8c5ce5f03492ed638eff1985f4ddc21cd014e16854e83b51cadec9df";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gmapping cob-navigation-global ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_mapping_slam holds launch files for running SLAM using the <a href="http://ros.org/wiki/gmapping">gmapping</a> package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
