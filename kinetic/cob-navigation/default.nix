
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-navigation-config, catkin, cob-navigation-slam, cob-map-accessibility-analysis, cob-navigation-global, cob-navigation-local, cob-mapping-slam, cob-linear-nav }:
buildRosPackage {
  pname = "ros-kinetic-cob-navigation";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_navigation/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "e47d07ce967eb56f1d14b94af8a5f38ca6a12219c1618e2923a172a44d9853f9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-navigation-config cob-navigation-slam cob-map-accessibility-analysis cob-navigation-global cob-navigation-local cob-mapping-slam cob-linear-nav ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_navigation stack provides different navigation packages for <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a>.'';
    license = with lib.licenses; [ asl20 ];
  };
}
