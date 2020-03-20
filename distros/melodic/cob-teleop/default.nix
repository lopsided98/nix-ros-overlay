
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-actions, cob-light, cob-script-server, cob-sound, geometry-msgs, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-cob-teleop";
  version = "0.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_teleop/0.6.16-1.tar.gz";
    name = "0.6.16-1.tar.gz";
    sha256 = "6d732c435142eeacd23a80acd230566100acddc4d063b23ed6a9e1f751340b8e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib cob-actions cob-light cob-script-server cob-sound geometry-msgs roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleop node'';
    license = with lib.licenses; [ asl20 ];
  };
}
