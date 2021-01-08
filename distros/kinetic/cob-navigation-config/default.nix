
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-navigation-config";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_navigation_config/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "df4ac6ca8c5f15efd71fcbb905977a90d713c9b68b0ac85e7555754127123c3b";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds common configuration files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node and other navigation related nodes on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a>.'';
    license = with lib.licenses; [ asl20 ];
  };
}
