
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, move-base-msgs, pluginlib, roscpp, rsm-core, rsm-msgs, sensor-msgs, std-msgs, std-srvs, tf, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rsm-additions";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/melodic/rsm_additions/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "fec4c5529ec2dfc2fd2873f8f2dfbb2de3f947a4926839a3c59deeb380113337";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs move-base-msgs pluginlib roscpp rsm-core rsm-msgs sensor-msgs std-msgs std-srvs tf tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_additions package includes plugins for the Robot
		Statemachine and exemplary launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
