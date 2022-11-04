
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-cob-default-env-config";
  version = "0.6.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_environments-release/archive/release/melodic/cob_default_env_config/0.6.12-1.tar.gz";
    name = "0.6.12-1.tar.gz";
    sha256 = "3de9a24f6d3fdcc549cafcebd7695f8fee6f43bff9db64de341c8f147e31e401";
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
