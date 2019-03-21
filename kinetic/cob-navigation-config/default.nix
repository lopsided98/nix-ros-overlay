
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-navigation-config";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_navigation_config/0.6.7-0.tar.gz;
    sha256 = "22eca03e4aefbccd5383fddc5a89236d0d7ebc08842a84f437dc30a513bbb628";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds common configuration files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node and other navigation related nodes on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a>.'';
    #license = lib.licenses.Apache 2.0;
  };
}
