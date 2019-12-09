
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, smach-viewer, rviz-plugin-tutorials, seed-r7-bringup, moveit-commander, moveit-simple-controller-manager, catkin, seed-r7-moveit-config, smach-ros, seed-r7-robot-interface, rviz, seed-r7-navigation, seed-r7-ros-controller, seed-r7-typef-moveit-config, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-samples";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_samples/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "28029d4833bfbc094dcae6380b30c1dbe8f9e576575de5b3eb6aa6974a63caa9";
  };

  buildType = "catkin";
  buildInputs = [ smach-viewer rviz-plugin-tutorials seed-r7-bringup moveit-commander moveit-simple-controller-manager seed-r7-moveit-config smach-ros seed-r7-robot-interface rviz seed-r7-navigation seed-r7-ros-controller seed-r7-typef-moveit-config ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ smach-viewer rviz-plugin-tutorials seed-r7-bringup moveit-commander moveit-simple-controller-manager seed-r7-moveit-config smach-ros seed-r7-robot-interface rviz seed-r7-navigation seed-r7-ros-controller seed-r7-typef-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_samples package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
