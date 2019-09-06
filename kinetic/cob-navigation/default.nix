
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-navigation-global, catkin, cob-navigation-slam, cob-navigation-local, cob-mapping-slam, cob-map-accessibility-analysis, cob-linear-nav, cob-navigation-config }:
buildRosPackage {
  pname = "ros-kinetic-cob-navigation";
  version = "0.6.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_navigation/0.6.8-1.tar.gz";
    name = "0.6.8-1.tar.gz";
    sha256 = "710055b40569e1fe893b460f841111d381abae483107caceeec2048e635043af";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-navigation-global cob-navigation-slam cob-navigation-local cob-mapping-slam cob-map-accessibility-analysis cob-linear-nav cob-navigation-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_navigation stack provides different navigation packages for <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a>.'';
    license = with lib.licenses; [ asl20 ];
  };
}
