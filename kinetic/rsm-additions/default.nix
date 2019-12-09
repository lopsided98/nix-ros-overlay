
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, pluginlib, std-srvs, std-msgs, tf, actionlib, catkin, rsm-core, actionlib-msgs, visualization-msgs, roscpp, rsm-msgs, move-base-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rsm-additions";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_additions/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "f827d132a25d5586729af385df98d8f29ee3ecf5d23e4da3d0448591a3482ba2";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs pluginlib std-msgs std-srvs actionlib tf rsm-core actionlib-msgs visualization-msgs roscpp rsm-msgs move-base-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs pluginlib std-srvs std-msgs tf actionlib rsm-core actionlib-msgs visualization-msgs roscpp rsm-msgs move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_additions package includes plugins for the Robot
		Statemachine and exemplary launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
