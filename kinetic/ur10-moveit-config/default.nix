
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, xacro, robot-state-publisher, moveit-ros-move-group, moveit-simple-controller-manager, catkin, moveit-ros-visualization, ur-description, roslaunch, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-ur10-moveit-config";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur10_moveit_config/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "8220db330c9db9b887331abda50d8e5adf160009d709ac02ebec3b2113c73c68";
  };

  buildType = "catkin";
  buildInputs = [ ur-description ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher xacro robot-state-publisher moveit-ros-move-group moveit-simple-controller-manager moveit-ros-visualization ur-description moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the ur10 with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
