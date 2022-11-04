
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, joint-trajectory-controller, pluginlib, robot-state-publisher, ros-control, ros-controllers, roslaunch, roslint }:
buildRosPackage {
  pname = "ros-melodic-gundam-rx78-control";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/gundam-global-challenge/gundam_robot-release/archive/release/melodic/gundam_rx78_control/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "aea11f0c98aced57ce60008763b2265d61130564f9a7be68085ea41662770f65";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-interface controller-manager joint-trajectory-controller pluginlib robot-state-publisher ros-control ros-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gundam_rx78_control contains launch and configuration scripts for the ros controller of the GUNDAM RX-78 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
