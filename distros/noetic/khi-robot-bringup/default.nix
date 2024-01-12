
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, joint-state-controller, joint-trajectory-controller, khi-duaro-description, khi-duaro-moveit-config, khi-robot-control, position-controllers, robot-state-publisher, roslaunch, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-khi-robot-bringup";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/khi_robot_bringup/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "054c0457c5d1e91f7d928a09279c70ad808532faccc19d701d4d99f6e6335d6c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ controller-manager joint-state-controller joint-trajectory-controller khi-duaro-description khi-duaro-moveit-config khi-robot-control position-controllers robot-state-publisher tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package contains bringup scripts/config/tools for KHI Robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
