
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, controller-interface, dynamic-reconfigure, effort-controllers, forward-command-controller, hardware-interface, pluginlib, realtime-tools, rm-common, rm-msgs, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rm-shooter-controllers";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_shooter_controllers/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "5a4ebee8b376ae673159daa3915d8dc17736589773119caf52b21f4ee4c63526";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-toolbox controller-interface dynamic-reconfigure effort-controllers forward-command-controller hardware-interface pluginlib realtime-tools rm-common rm-msgs roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Shooter controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
