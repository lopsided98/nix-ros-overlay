
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, cob-sound, geometry-msgs, cob-actions, std-msgs, std-srvs, actionlib, catkin, roscpp, cob-light, cob-script-server }:
buildRosPackage {
  pname = "ros-melodic-cob-teleop";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_teleop/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "47c3e837841c74f8c931e2ec96410a6fb3a0e4233a1028570b0401a27d59d598";
  };

  buildType = "catkin";
  buildInputs = [ cob-sound sensor-msgs geometry-msgs cob-actions std-msgs std-srvs actionlib roscpp cob-light cob-script-server ];
  propagatedBuildInputs = [ cob-sound sensor-msgs geometry-msgs cob-actions std-msgs std-srvs actionlib roscpp cob-light cob-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleop node'';
    license = with lib.licenses; [ asl20 ];
  };
}
