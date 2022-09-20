
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-navigation-config";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_navigation_config/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "2c60787864535045ad0d1755efea2bc0223a97d12b2819ca20465d18c06fe4e5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds common configuration files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node and other navigation related nodes on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a>.'';
    license = with lib.licenses; [ asl20 ];
  };
}
