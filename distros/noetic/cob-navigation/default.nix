
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-linear-nav, cob-map-accessibility-analysis, cob-mapping-slam, cob-navigation-config, cob-navigation-global, cob-navigation-local, cob-navigation-slam }:
buildRosPackage {
  pname = "ros-noetic-cob-navigation";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/noetic/cob_navigation/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "eff60d6779a3a127737846a5ca8c0b042889c04037d081db0ee4c767e1730933";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-linear-nav cob-map-accessibility-analysis cob-mapping-slam cob-navigation-config cob-navigation-global cob-navigation-local cob-navigation-slam ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_navigation stack provides different navigation packages for <a href=\"http://ros.org/wiki/care-o-bot\">Care-O-bot</a>.";
    license = with lib.licenses; [ asl20 ];
  };
}
