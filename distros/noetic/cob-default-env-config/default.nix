
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-cob-default-env-config";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_environments-release/archive/release/noetic/cob_default_env_config/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "caa6bbd3cd304577b85dd7fdf249b2465c2a490bd925692c6ea73fb6840a26f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains configuration files for the default environments for Care-O-bot supported by IPA.";
    license = with lib.licenses; [ asl20 ];
  };
}
