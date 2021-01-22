
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, move-base-msgs, pluginlib, roscpp, rsm-core, rsm-msgs, sensor-msgs, std-msgs, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rsm-additions";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_additions/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "f827d132a25d5586729af385df98d8f29ee3ecf5d23e4da3d0448591a3482ba2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs move-base-msgs pluginlib roscpp rsm-core rsm-msgs sensor-msgs std-msgs std-srvs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_additions package includes plugins for the Robot
		Statemachine and exemplary launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
