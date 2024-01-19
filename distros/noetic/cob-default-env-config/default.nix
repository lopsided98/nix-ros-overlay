
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-cob-default-env-config";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_environments-release/archive/release/noetic/cob_default_env_config/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "6cde5633df93fa2800618827ee773455398dc8cd7da437f0ae49b363a12d9a7b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains configuration files for the default environments for Care-O-bot supported by IPA.'';
    license = with lib.licenses; [ asl20 ];
  };
}
