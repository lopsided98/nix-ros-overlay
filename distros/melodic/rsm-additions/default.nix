
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, move-base-msgs, nav-msgs, pluginlib, roscpp, rsm-core, rsm-msgs, sensor-msgs, std-msgs, std-srvs, tf, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rsm-additions";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/melodic/rsm_additions/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "d0ab381d12932e014c6a1a9f698193eaf89e502b8ebd6bad0b8da54e3d45d327";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs move-base-msgs nav-msgs pluginlib roscpp rsm-core rsm-msgs sensor-msgs std-msgs std-srvs tf tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_additions package includes plugins for the Robot
		Statemachine and exemplary launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
