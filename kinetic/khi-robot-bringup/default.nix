
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, joint-state-controller, khi-robot-control, catkin, khi-duaro-moveit-config, joint-trajectory-controller, rostest, position-controllers, robot-state-publisher, roslaunch, tf, khi-duaro-description }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-bringup";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_bringup/1.1.0-1.tar.gz;
    sha256 = "9e4deef5b478c9db1e62f078ebefcdbc735ae6e830671c1acf630da0cb4782b9";
  };

  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ controller-manager joint-state-controller khi-robot-control khi-duaro-moveit-config joint-trajectory-controller position-controllers robot-state-publisher tf khi-duaro-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package contains bringup scripts/config/tools for KHI Robot'';
    #license = lib.licenses.BSD;
  };
}
