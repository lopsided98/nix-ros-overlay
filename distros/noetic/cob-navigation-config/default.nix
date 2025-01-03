
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-navigation-config";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/noetic/cob_navigation_config/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "1236b962834786fe57526ddc48a34c2515cd15adec6bf481b52cbd4a6781d79e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package holds common configuration files for running the  <a href=\"http://ros.org/wiki/move_base\">move_base</a> node and other navigation related nodes on the <a href=\"http://ros.org/wiki/care-o-bot\">Care-O-bot</a>.";
    license = with lib.licenses; [ asl20 ];
  };
}
