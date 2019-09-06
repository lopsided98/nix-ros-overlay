
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, pluginlib, actionlib-msgs, rsm-msgs, sensor-msgs, catkin, rsm-core, roscpp, move-base-msgs, visualization-msgs, actionlib, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rsm-additions";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_additions/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "f827d132a25d5586729af385df98d8f29ee3ecf5d23e4da3d0448591a3482ba2";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs pluginlib actionlib-msgs rsm-msgs sensor-msgs rsm-core roscpp move-base-msgs visualization-msgs actionlib std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs pluginlib actionlib-msgs tf rsm-msgs sensor-msgs rsm-core move-base-msgs visualization-msgs actionlib std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_additions package includes plugins for the Robot
		Statemachine and exemplary launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
