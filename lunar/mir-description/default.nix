
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-controller, diff-drive-controller, catkin, position-controllers, rviz, urdf, robot-state-publisher, roslaunch, joint-state-publisher, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-lunar-mir-description";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/mir_description/1.0.4-1.tar.gz;
    sha256 = "697d58b90cb2c67e885241f5f5623a4eb12c3aa693947f3079755c1281415471";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-controller diff-drive-controller position-controllers rviz urdf robot-state-publisher joint-state-publisher xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
