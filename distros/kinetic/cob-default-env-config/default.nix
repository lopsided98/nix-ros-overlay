
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-cob-default-env-config";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_environments-release/archive/release/kinetic/cob_default_env_config/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "29db66450b6527af6462b9ae788891ebbf50882545d8e97800b44b359b1803f9";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains configuration files for the default environments for Care-O-bot supported by IPA.'';
    license = with lib.licenses; [ asl20 ];
  };
}
