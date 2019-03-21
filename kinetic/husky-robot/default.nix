
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-base, catkin, husky-bringup }:
buildRosPackage {
  pname = "ros-kinetic-husky-robot";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_robot/0.3.2-0.tar.gz;
    sha256 = "36e915e8e866ada7a16bbd92d5064e2e4bae9e3f9a9351e08ce817a86d2b6981";
  };

  propagatedBuildInputs = [ husky-base husky-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky robot software'';
    #license = lib.licenses.BSD;
  };
}
