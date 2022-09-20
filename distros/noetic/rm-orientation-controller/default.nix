
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, forward-command-controller, pluginlib, rm-common, roscpp, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-orientation-controller";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_orientation_controller/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "3e68a608f0bfb6b249c99e22f4aa185a2080f18583925526e5f67cea4198ae1e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles forward-command-controller pluginlib rm-common roscpp sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot orientation controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
