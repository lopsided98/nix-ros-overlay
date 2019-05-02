
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, joint-state-controller, trajectory-msgs, joint-limits-interface, realtime-tools, catkin, joint-trajectory-controller, diagnostic-updater, rostest, position-controllers, khi-robot-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-control";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_control/1.1.1-1.tar.gz;
    sha256 = "bd9fd600359b4a77b585f5e2b2518f4882b297aa93417366caf6a0fbc5638d8d";
  };

  buildInputs = [ diagnostic-updater hardware-interface controller-manager realtime-tools trajectory-msgs khi-robot-msgs joint-limits-interface transmission-interface ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-controller trajectory-msgs joint-limits-interface joint-trajectory-controller diagnostic-updater position-controllers khi-robot-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS KHI robot controller package based on ros_control'';
    #license = lib.licenses.BSD;
  };
}
