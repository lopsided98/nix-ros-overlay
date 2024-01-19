
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, controller-interface, forward-command-controller, pluginlib, rm-common, roscpp, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-orientation-controller";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_orientation_controller/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "cd518391d319f463a2cad712caa93e31e117b36cd9b9c8d7281a2bccc6bacfe9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles controller-interface forward-command-controller pluginlib rm-common roscpp sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot orientation controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
