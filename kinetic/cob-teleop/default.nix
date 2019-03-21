
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cob-sound, cob-script-server, sensor-msgs, catkin, cob-light, actionlib, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-teleop";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_teleop/0.6.10-0.tar.gz;
    sha256 = "532e947477bd86ad9eab79272f84d4c0946aecf5ed1b8599e30113f7b2248d65";
  };

  propagatedBuildInputs = [ std-srvs cob-sound cob-script-server sensor-msgs cob-light actionlib std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ std-srvs cob-sound cob-script-server sensor-msgs catkin cob-light actionlib std-msgs roscpp geometry-msgs ];

  meta = {
    description = ''Teleop node'';
    #license = lib.licenses.Apache 2.0;
  };
}
