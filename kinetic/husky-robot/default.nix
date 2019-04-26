
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-base, catkin, husky-bringup }:
buildRosPackage {
  pname = "ros-kinetic-husky-robot";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_robot/0.3.3-0.tar.gz;
    sha256 = "cb0ec30a0b05e900ec44b9454adcb43f283ef635ab7ec7068086b2f5e8165733";
  };

  propagatedBuildInputs = [ husky-base husky-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky robot software'';
    #license = lib.licenses.BSD;
  };
}
