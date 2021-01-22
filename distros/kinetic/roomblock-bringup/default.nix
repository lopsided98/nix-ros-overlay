
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, create-node, image-transport, joy, pythonPackages, robot-pose-ekf, robot-state-publisher, roomblock-description, roslaunch, rostest, rplidar-ros, rviz, teleop-twist-joy }:
buildRosPackage {
  pname = "ros-kinetic-roomblock-bringup";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/tork-a/roomblock-release/archive/release/kinetic/roomblock_bringup/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "cc9097d46b07fa2754b52e94eeb968a7eccd8b2c58b9536bdad2d0716e1b831b";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ controller-manager create-node image-transport joy pythonPackages.pyserial robot-pose-ekf robot-state-publisher roomblock-description rplidar-ros rviz teleop-twist-joy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roomblock_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
