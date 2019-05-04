
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-default-env-config";
  version = "0.6.8";

  src = fetchurl {
    url = https://github.com/ipa320/cob_environments-release/archive/release/kinetic/cob_default_env_config/0.6.8-0.tar.gz;
    sha256 = "5aea7d7eedd364286669271a8f4896a923122252d187b4699966fc39d10ed148";
  };

  checkInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains configuration files for the default environments for Care-O-bot supported by IPA.'';
    license = with lib.licenses; [ asl20 ];
  };
}
