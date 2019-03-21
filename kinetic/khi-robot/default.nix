
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, khi-robot-control, catkin, khi-robot-bringup, rs007l-moveit-config, duaro-moveit-config, rs080n-moveit-config, duaro-description, duaro-ikfast-plugin, duaro-gazebo, rs007n-moveit-config, rs-gazebo, khi-robot-msgs, rs-description, rs-ikfast-plugin }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot/1.0.0-0.tar.gz;
    sha256 = "23ff741139a7355a1661b308583b680be28020b2b8cefdd730decfdd6f7effd0";
  };

  propagatedBuildInputs = [ rs-description khi-robot-control khi-robot-bringup rs007l-moveit-config duaro-moveit-config rs-ikfast-plugin duaro-description duaro-gazebo rs007n-moveit-config rs-gazebo khi-robot-msgs rs080n-moveit-config duaro-ikfast-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for khi_robot'';
    #license = lib.licenses.BSD;
  };
}
