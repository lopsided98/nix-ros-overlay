
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, cob-sound, geometry-msgs, cob-actions, std-msgs, std-srvs, actionlib, catkin, roscpp, cob-light, cob-script-server }:
buildRosPackage {
  pname = "ros-kinetic-cob-teleop";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_teleop/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "ffb4a3e16c0f1a88af4562d914ab9f619a26c7bed7e8b4a53ee843713d1cac31";
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
