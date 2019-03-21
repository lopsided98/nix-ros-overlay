
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-default-env-config";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/cob_environments-release/archive/release/kinetic/cob_default_env_config/0.6.7-0.tar.gz;
    sha256 = "f190d3acc9d03a918eff5e0bd51930b309b460707b6346bb837091516812a6d3";
  };

  checkInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains configuration files for the default environments for Care-O-bot supported by IPA.'';
    #license = lib.licenses.Apache 2.0;
  };
}
