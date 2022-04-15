
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, controller-interface, forward-command-controller, hardware-interface, pluginlib, realtime-tools, rm-common, rm-msgs, roscpp, roslint, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-orientation-controller";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_orientation_controller/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "87f54d252f402d884f89c2ba785aaafdba3fbee5926e12d2f82a75f5b11b9e4a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles controller-interface forward-command-controller hardware-interface pluginlib realtime-tools rm-common rm-msgs roscpp roslint sensor-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot orientation controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
