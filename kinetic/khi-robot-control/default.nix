
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, joint-state-controller, trajectory-msgs, realtime-tools, joint-limits-interface, catkin, joint-trajectory-controller, diagnostic-updater, position-controllers, khi-robot-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-control";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_control/1.1.0-1.tar.gz;
    sha256 = "41b3f2dd1e24c3fa0dbcd0a06469de3ff047bc7fc1955d16c4637b5e526af6d4";
  };

  buildInputs = [ diagnostic-updater hardware-interface controller-manager realtime-tools trajectory-msgs khi-robot-msgs joint-limits-interface transmission-interface ];
  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-controller trajectory-msgs joint-limits-interface joint-trajectory-controller diagnostic-updater position-controllers khi-robot-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS KHI robot controller package based on ros_control'';
    #license = lib.licenses.BSD;
  };
}
