
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, pluginlib, roscpp, rsm-msgs, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-rsm-core";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/melodic/rsm_core/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "73718531335c64edd3311b0982b207d96fe3d5527e5183f619d80a37acbae87b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs pluginlib roscpp rsm-msgs sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The statemachine package includes the Robot Statemachine's
		main functionality'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
