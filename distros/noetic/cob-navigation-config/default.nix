
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-navigation-config";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/noetic/cob_navigation_config/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "045fb465e68e0c7945f4a668f2d2734f2ae4039bd61d24e4004ed8ee8392af5f";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds common configuration files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node and other navigation related nodes on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a>.'';
    license = with lib.licenses; [ asl20 ];
  };
}
