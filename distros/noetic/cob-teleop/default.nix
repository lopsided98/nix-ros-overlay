
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-actions, cob-light, cob-script-server, cob-sound, geometry-msgs, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-teleop";
  version = "0.6.34-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/cob_teleop/0.6.34-1.tar.gz";
    name = "0.6.34-1.tar.gz";
    sha256 = "85535102327b683deda4921d91e44579c8ab8eda0483e9a1e005dfed7ac7834a";
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
