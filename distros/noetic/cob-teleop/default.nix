
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-actions, cob-light, cob-script-server, cob-sound, geometry-msgs, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-teleop";
  version = "0.6.29-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_teleop/0.6.29-1.tar.gz";
    name = "0.6.29-1.tar.gz";
    sha256 = "229d251662be957b3fc631e0d53ff99236646867e46ce29820d4d71102ec10ab";
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
