
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, roomblock-description, image-transport, create-node, joy, pythonPackages, catkin, rostest, rplidar-ros, robot-pose-ekf, rviz, teleop-twist-joy, robot-state-publisher, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-roomblock-bringup";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/tork-a/roomblock-release/archive/release/kinetic/roomblock_bringup/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "cc9097d46b07fa2754b52e94eeb968a7eccd8b2c58b9536bdad2d0716e1b831b";
  };

  buildType = "catkin";
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ controller-manager roomblock-description pythonPackages.pyserial image-transport create-node joy rplidar-ros robot-pose-ekf rviz teleop-twist-joy robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roomblock_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
