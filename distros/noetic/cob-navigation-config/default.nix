
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-navigation-config";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/noetic/cob_navigation_config/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "945670c47b4f6c729265fb0890e080a485f2d719cc28674524753d39df227a76";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds common configuration files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node and other navigation related nodes on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a>.'';
    license = with lib.licenses; [ asl20 ];
  };
}
