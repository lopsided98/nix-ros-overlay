
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-cob-default-env-config";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_environments-release/archive/release/melodic/cob_default_env_config/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "d1e459919f059b334c6a24685c711fb4b007d06123c376ea9463c6b08f9ad646";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains configuration files for the default environments for Care-O-bot supported by IPA.'';
    license = with lib.licenses; [ asl20 ];
  };
}
