
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander, moveit-simple-controller-manager, roslaunch, rostest, rviz, rviz-plugin-tutorials, seed-r7-bringup, seed-r7-moveit-config, seed-r7-navigation, seed-r7-robot-interface, seed-r7-ros-controller, seed-r7-typef-moveit-config, smach-ros, smach-viewer }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-samples";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_samples/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "003bb3943dbdeab21a00db40d466e17522e97970776363d3800a69e480519c07";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ moveit-commander moveit-simple-controller-manager rviz rviz-plugin-tutorials seed-r7-bringup seed-r7-moveit-config seed-r7-navigation seed-r7-robot-interface seed-r7-ros-controller seed-r7-typef-moveit-config smach-ros smach-viewer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_samples package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
