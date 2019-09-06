
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-controller, diff-drive-controller, catkin, position-controllers, rviz, urdf, robot-state-publisher, roslaunch, joint-state-publisher, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-mir-description";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_description/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "75e85e0254228274ed31f3f39461d07ea16571e44b55b5714ed2d5c4257c81be";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-controller diff-drive-controller position-controllers rviz urdf robot-state-publisher joint-state-publisher xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
