
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander, moveit-simple-controller-manager, roslaunch, rostest, rviz, rviz-plugin-tutorials, seed-r7-bringup, seed-r7-moveit-config, seed-r7-navigation, seed-r7-robot-interface, seed-r7-ros-controller, seed-r7-typef-moveit-config, smach-ros, smach-viewer }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-samples";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/melodic/seed_r7_samples/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "054de0026cd190bc6e6cb30597a51208f3ff6013b1cd9e9186ad4bc405c8dbcc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ moveit-commander moveit-simple-controller-manager rviz rviz-plugin-tutorials seed-r7-bringup seed-r7-moveit-config seed-r7-navigation seed-r7-robot-interface seed-r7-ros-controller seed-r7-typef-moveit-config smach-ros smach-viewer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_samples package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
