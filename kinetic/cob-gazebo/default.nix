
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, control-msgs, trajectory-msgs, cob-script-server, cob-hardware-config, catkin, gazebo-plugins, rostest, cob-gazebo-ros-control, cob-bringup, rospy, cob-supported-robots, roslaunch, cob-default-robot-config, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo/0.6.10-0.tar.gz;
    sha256 = "d68feda8aeb6a094a793452a0e87004446d87ded0e2b66005d2f273e666cd4b7";
  };

  buildInputs = [ roslaunch ];
  checkInputs = [ cob-supported-robots ];
  propagatedBuildInputs = [ gazebo-ros control-msgs trajectory-msgs cob-script-server cob-hardware-config gazebo-plugins rostest cob-gazebo-ros-control cob-bringup rospy roslaunch cob-default-robot-config gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and tools for 3D simulation of Care-O-bot in gazebo simulator.'';
    license = with lib.licenses; [ asl20 ];
  };
}
