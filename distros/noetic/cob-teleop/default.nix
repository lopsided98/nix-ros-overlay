
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-actions, cob-light, cob-script-server, cob-sound, geometry-msgs, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-teleop";
  version = "0.6.32-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_teleop/0.6.32-1.tar.gz";
    name = "0.6.32-1.tar.gz";
    sha256 = "8a61fc4a7b64da03ad89c364950296414a32a4a72c61c5b8d5eeaf194aa8c1b9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib cob-actions cob-light cob-script-server cob-sound geometry-msgs roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleop node'';
    license = with lib.licenses; [ asl20 ];
  };
}
