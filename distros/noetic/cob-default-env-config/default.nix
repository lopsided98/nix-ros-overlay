
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-cob-default-env-config";
  version = "0.6.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_environments-release/archive/release/noetic/cob_default_env_config/0.6.12-1.tar.gz";
    name = "0.6.12-1.tar.gz";
    sha256 = "25bf7d51166ad5d395862797d4ea5ecfbfa8a075d542af97b88b734150d1a390";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains configuration files for the default environments for Care-O-bot supported by IPA.'';
    license = with lib.licenses; [ asl20 ];
  };
}
