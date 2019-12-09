
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, xacro, urdf, robot-state-publisher, position-controllers, catkin, rviz, diff-drive-controller, gazebo-ros-control, roslaunch, joint-state-controller }:
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
  propagatedBuildInputs = [ joint-state-publisher xacro urdf robot-state-publisher position-controllers rviz diff-drive-controller gazebo-ros-control joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
