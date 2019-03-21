
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-navigation-global, catkin, cob-navigation-slam, cob-navigation-local, cob-mapping-slam, cob-map-accessibility-analysis, cob-linear-nav, cob-navigation-config }:
buildRosPackage {
  pname = "ros-kinetic-cob-navigation";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_navigation/0.6.7-0.tar.gz;
    sha256 = "17a36ff35bdf95388ca26fb2f2eae0b8ea2a18e3f94f78785921fbfae8b8db23";
  };

  propagatedBuildInputs = [ cob-navigation-local cob-mapping-slam cob-map-accessibility-analysis cob-navigation-global cob-linear-nav cob-navigation-config cob-navigation-slam ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_navigation stack provides different navigation packages for <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a>.'';
    #license = lib.licenses.Apache 2.0;
  };
}
