
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-interface, dynamic-reconfigure, effort-controllers, forward-command-controller, hardware-interface, pluginlib, realtime-tools, rm-common, rm-msgs, roscpp, roslint, tf2, tf2-eigen, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-gimbal-controllers";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_gimbal_controllers/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "7f9539163424ec2c1e8819e7d81ec0fa606b415554a4e9f514f9d7bddce9ba83";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles control-toolbox controller-interface dynamic-reconfigure effort-controllers forward-command-controller hardware-interface pluginlib realtime-tools rm-common rm-msgs roscpp roslint tf2 tf2-eigen tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Gimbal controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
