
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-actions, cob-light, cob-script-server, cob-sound, geometry-msgs, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-cob-teleop";
  version = "0.6.35-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/cob_teleop/0.6.35-2.tar.gz";
    name = "0.6.35-2.tar.gz";
    sha256 = "a22eabbca884c5456feb2b19e6c989ea83de3c5d217a9a70e95610b4e984c235";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib cob-actions cob-light cob-script-server cob-sound geometry-msgs roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Teleop node";
    license = with lib.licenses; [ asl20 ];
  };
}
