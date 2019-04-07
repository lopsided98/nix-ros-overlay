
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, joint-state-controller, roslint, catkin, joint-trajectory-controller, diagnostic-updater, rostest, position-controllers, robot-state-publisher, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-melfa-driver";
  version = "0.0.4";

  src = fetchurl {
    url = https://github.com/tork-a/melfa_robot-release/archive/release/kinetic/melfa_driver/0.0.4-0.tar.gz;
    sha256 = "916b4e29ffbe5a67a09bc81e1c6ae19179b54d93f0b97a7bd499c38086a2cea3";
  };

  buildInputs = [ diagnostic-updater hardware-interface roscpp controller-manager ];
  checkInputs = [ rostest roslaunch roslint ];
  propagatedBuildInputs = [ diagnostic-updater hardware-interface position-controllers joint-state-controller controller-manager robot-state-publisher roscpp joint-trajectory-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The melfa_driver package'';
    #license = lib.licenses.Apache License 2.0;
  };
}
