
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, joint-trajectory-controller, pluginlib, robot-state-publisher, ros-control, ros-controllers, roslaunch, roslint }:
buildRosPackage {
  pname = "ros-kinetic-gundam-rx78-control";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/gundam-global-challenge/gundam_robot-release/archive/release/kinetic/gundam_rx78_control/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "a091a2d331d48cf7387a3e3b542c64ca2a4ab0d6f09c344f9e5d5914a42504e3";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-interface controller-manager joint-trajectory-controller pluginlib robot-state-publisher ros-control ros-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gundam_rx78_control contains launch and configuration scripts for the ros controller of the GUNDAM RX-78 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
