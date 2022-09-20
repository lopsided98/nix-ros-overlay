
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, pluginlib, roscpp, rsm-msgs, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-rsm-core";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/melodic/rsm_core/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "2617e8e7b3b17b92394685b886898922bfcd72bcbf1b3208c1818900e6b319e2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs pluginlib roscpp rsm-msgs sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The statemachine package includes the Robot Statemachine's
		main functionality'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
