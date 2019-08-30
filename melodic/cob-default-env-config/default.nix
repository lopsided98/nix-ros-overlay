
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-default-env-config";
  version = "0.6.10-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_environments-release/archive/release/melodic/cob_default_env_config/0.6.10-1.tar.gz;
    sha256 = "367b393e0eaba908fab4e6cca65b1cb1c7448c3762558ae0e5131b1e9eaf02e1";
  };

  checkInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains configuration files for the default environments for Care-O-bot supported by IPA.'';
    license = with lib.licenses; [ asl20 ];
  };
}
