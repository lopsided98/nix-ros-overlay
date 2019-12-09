
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, robot-state-publisher, position-controllers, catkin, roslint, roscpp, joint-trajectory-controller, roslaunch, rostest, joint-state-controller, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-melfa-driver";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/tork-a/melfa_robot-release/archive/release/kinetic/melfa_driver/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "916b4e29ffbe5a67a09bc81e1c6ae19179b54d93f0b97a7bd499c38086a2cea3";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface roscpp controller-manager diagnostic-updater ];
  checkInputs = [ roslaunch rostest roslint ];
  propagatedBuildInputs = [ controller-manager robot-state-publisher hardware-interface position-controllers roscpp joint-trajectory-controller joint-state-controller diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The melfa_driver package'';
    license = with lib.licenses; [ asl20 ];
  };
}
