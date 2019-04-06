
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-default-env-config";
  version = "0.6.8";

  src = fetchurl {
    url = https://github.com/ipa320/cob_environments-release/archive/release/melodic/cob_default_env_config/0.6.8-0.tar.gz;
    sha256 = "287d83e86a65dcd11bf0e3a84f98617e7b4120052814846fca4f8053ecd622d7";
  };

  checkInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains configuration files for the default environments for Care-O-bot supported by IPA.'';
    #license = lib.licenses.Apache 2.0;
  };
}
