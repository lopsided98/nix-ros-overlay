
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, joint-state-controller, joint-trajectory-controller, khi-duaro-description, khi-duaro-moveit-config, khi-robot-control, position-controllers, robot-state-publisher, roslaunch, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-khi-robot-bringup";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/khi_robot_bringup/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "2fb5d538ff7cca22d2210aac7ff0f6ca52d388b2fbd6eee3920de9fdb3909c81";
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
