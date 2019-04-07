
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cob-sound, cob-script-server, sensor-msgs, catkin, cob-light, actionlib, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-teleop";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_teleop/0.6.11-0.tar.gz;
    sha256 = "88c917a02d7a89cf88e4434b377b1089c909e99cf00203f292a81e8e96074f50";
  };

  buildInputs = [ std-srvs cob-sound cob-script-server sensor-msgs cob-light actionlib std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs cob-sound cob-script-server sensor-msgs cob-light actionlib std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleop node'';
    #license = lib.licenses.Apache 2.0;
  };
}
