
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-default-env-config";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_environments-release/archive/release/kinetic/cob_default_env_config/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "7d36d8979e07502fc18b94c837941a79f101a0fceca7b958e9e72616a725d47c";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains configuration files for the default environments for Care-O-bot supported by IPA.'';
    license = with lib.licenses; [ asl20 ];
  };
}
