
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-linear-nav, cob-map-accessibility-analysis, cob-mapping-slam, cob-navigation-config, cob-navigation-global, cob-navigation-local, cob-navigation-slam }:
buildRosPackage {
  pname = "ros-noetic-cob-navigation";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/noetic/cob_navigation/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "8443149ed293e66113ae237350968b1bc5ef5b2a04a56f231914eae5a58919b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-linear-nav cob-map-accessibility-analysis cob-mapping-slam cob-navigation-config cob-navigation-global cob-navigation-local cob-navigation-slam ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_navigation stack provides different navigation packages for <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a>.'';
    license = with lib.licenses; [ asl20 ];
  };
}
